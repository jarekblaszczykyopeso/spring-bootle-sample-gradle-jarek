package com.yopeso.springbootsample;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringBootSampleApplicationTests {

	@Test
	public void contextLoads() {

			assertEquals(3, 3);
	}

}
