package cn.sm1234.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.sm1234.dao.CustomerMapper;
import cn.sm1234.domain.Customer;
import cn.sm1234.service.CustomerService;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
	//注入Mapper对象
	@Resource
	private CustomerMapper customerMapper;
	
	public void saveCustomer(Customer customer) {
		customerMapper.saveCustomer(customer);
/*		//模拟异常
		//int i = 100/0;
		customerMapper.saveCustomer(customer);*/
	}
}
