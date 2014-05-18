package com.surya.aem.blog.impl;

import javax.jcr.Repository;

import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Reference;
import org.apache.felix.scr.annotations.Service;
import org.apache.sling.jcr.api.SlingRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.surya.aem.blog.HelloService;

/**
 * One implementation of the {@link HelloService}. Note that
 * the repository is injected, not retrieved.
 */
@Service
@Component(metatype = false)
public class HelloServiceImpl implements HelloService {
	private Logger logger = LoggerFactory.getLogger(HelloServiceImpl.class);
	@Reference
	private SlingRepository repository;

	public String getRepositoryName() {
		logger.debug("HelloSerive initiated");
		return repository.getDescriptor(Repository.REP_NAME_DESC);
	}

}
