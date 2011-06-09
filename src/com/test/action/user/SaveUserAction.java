package com.test.action.user;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.User;
import com.test.service.UserService;

public class SaveUserAction extends ActionSupport
{
	private User user;
	private UserService service;

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public UserService getService()
	{
		return service;
	}

	public void setService(UserService service)
	{
		this.service = service;
	}

	@Override
	public String execute() throws Exception
	{
		this.service.save(this.user);

		return SUCCESS;
	}

	@Override
	@SuppressWarnings("unchecked")
	public void validate()
	{
		Map map = this.getFieldErrors();
		Set set = map.keySet();

		for (Iterator iter = set.iterator(); iter.hasNext();)
		{
			System.out.println(map.get(iter.next()));
		}
	}
}
