package com.universitysys.SSE;

import com.universitysys.SSE.service.StatisticService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;


@SpringBootApplication
public class SseApplication {
	private static final Logger logger = LogManager.getLogger(SseApplication.class);

	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SseApplication.class);
	}
	public static void main(String[] args)
	{
		SpringApplication.run(SseApplication.class, args);
		logger.debug("Debugging log");
		logger.info("Info log");
		logger.warn("Hey, This is a warning!");
		logger.error("Oops! We have an Error. OK");
		logger.fatal("Damn! Fatal error. Please fix me.");
	}
	}
