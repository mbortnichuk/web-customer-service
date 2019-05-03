package com.luv2code.springdemo.controller;

import com.luv2code.springdemo.dao.CustomerDAO;
import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

//    // need to inject the customer dao
//    @Autowired
//    private CustomerDAO customerDAO;

    // need to inject customer service
    @Autowired
    private CustomerService customerService;

    @GetMapping("/customer/list")
    public String listCustomers(Model theModel) {
        // get customer from the service
        // add the customers to the model

        List<Customer> theCustomers = customerService.getCustomers();
        theModel.addAttribute("customers", theCustomers);

        return "list-customers";
    }



}
