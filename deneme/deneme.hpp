#ifndef DENEME_HPP
# define DENEME_HPP

#include <iostream>

class deneme
{
	private:
		int bank_money;
	public:
		std::string ad;
		std::string soyad;
		int yas;

		deneme();
		~deneme();

		void	add();

		void	set_bank_money(int money);
		int		get_bank_money(); 
};


#endif