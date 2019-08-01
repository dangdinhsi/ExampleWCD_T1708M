package filter;

import com.googlecode.objectify.ObjectifyService;
import entity.Employee;

import javax.servlet.*;
import java.io.IOException;

public class MyRegister implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        ObjectifyService.register(Employee.class);
        chain.doFilter(request,response);
    }

    public void destroy() {

    }
}
