import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Matchers;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.test.web.servlet.setup.StandaloneMockMvcBuilder;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.jrw.springmvc.configuration.HelloWorldConfiguration;
import com.jrw.springmvc.controller.HelloWorldController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {HelloWorldConfiguration.class})
@WebAppConfiguration
public class HelloWorldControllerTest {

	@InjectMocks
	private HelloWorldController helloWorldController;
	
	@InjectMocks
	private HelloWorldConfiguration helloWorldConfiguration;

	private MockMvc mockMvc;
	
	private MockMvcRequestBuilders mockMvcRequestBuilders;
	
	@Before
	public void setup() {
		MockitoAnnotations.initMocks(this);
		/* see http://stackoverflow.com/questions/18813615/how-to-avoid-the-circular-view-path-exception-with-spring-mvc-test */
		/*InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/jsp/view/");
        viewResolver.setSuffix(".jsp");*/
		mockMvc = MockMvcBuilders.standaloneSetup(helloWorldController)
				.setViewResolvers(helloWorldConfiguration.viewResolver())
				.build();
	}
	
	@Test
	public void testHomePage() throws Exception {
		System.out.println(mockMvc);
		mockMvc.perform(mockMvcRequestBuilders.get("/welcome"))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andExpect(MockMvcResultMatchers.view().name("welcome"));
	}	
}
