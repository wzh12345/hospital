package com.hm.convertor;

import org.springframework.core.convert.converter.Converter;

public class CharacterConversion implements Converter<String,Character>{

	@Override
	public Character convert(String sex) {
		
		return sex.charAt(0);
	}

}
