#include "deneme.hpp"

deneme::deneme(){}

deneme::~deneme(){}

void deneme::add()
{
	this->yas += 14;
}

void deneme::set_bank_money(int money)
{
	this->bank_money = money;
}

int deneme::get_bank_money()
{
	return(this->bank_money);
}