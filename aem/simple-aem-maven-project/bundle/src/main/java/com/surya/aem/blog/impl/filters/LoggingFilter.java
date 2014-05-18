package com.surya.aem.blog.impl.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Reference;
import org.apache.felix.scr.annotations.sling.SlingFilter;
import org.apache.felix.scr.annotations.sling.SlingFilterScope;
import org.apache.sling.api.SlingHttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.surya.aem.blog.HelloService;

/**
 * Simple servlet filter component that logs incoming requests.
 */
@SlingFilter(generateComponent = false, generateService = true, order = -700, scope = SlingFilterScope.REQUEST)
@Component(immediate = true, metatype = false)
public class LoggingFilter implements Filter {

	private Logger logger = LoggerFactory.getLogger(LoggingFilter.class);
	@Reference
	private HelloService helloService;

	public void init(FilterConfig filterConfig) throws ServletException {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// because this is a Sling filter, we can be assured the the request is an instance of SlingHttpServletRequest
		helloService.getRepositoryName();
		SlingHttpServletRequest slingRequest = (SlingHttpServletRequest) request;
		logger.debug("request for {}, with selector {}", slingRequest.getRequestPathInfo().getResourcePath(), 
				slingRequest.getRequestPathInfo().getSelectorString());

		chain.doFilter(request, response);
	}

	public void destroy() {
	}

}