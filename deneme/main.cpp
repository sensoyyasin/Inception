#include "deneme.hpp"

int main(int argc, char **argv)
{
	deneme my_obj;

	my_obj.ad = "Yasin";
	my_obj.soyad = "Sensoy";
	my_obj.yas = 21;

	std::cout << "Kulalnici Adi: "<< my_obj.ad << std::endl;
	std::cout << "Kullanici Soyadi : " << my_obj.soyad << std::endl;
	std::cout << "Kullanici Yasi: " << my_obj.yas << std::endl;

	my_obj.add();
	std::cout << "Yas2: " << my_obj.yas << std::endl;

	my_obj.set_bank_money(1000);
	std::cout << "My Bank Money: " << my_obj.get_bank_money() << std::endl;
}