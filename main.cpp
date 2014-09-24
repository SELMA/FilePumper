#include <fstream>
#include <iostream>

int					main(int az, char **av)
{
	std::fstream	fs;
	int				mo;
	
	
	if (az > 1)
	{
		std::cout << "FILE PUMPER !!" << std::endl;
		std::cout << "Entrez une taille :" << std::endl;
		std::cout << "Mo : ";
		std::cin >> mo;
		
		fs.open(av[1], std::fstream::out |
					   std::fstream::app);
		if (fs.is_open())	
		{
			while (fs.tellg() < 1048576 * mo)
				fs << 0;
		}

		fs.close();
	}
	
    return (false);
}