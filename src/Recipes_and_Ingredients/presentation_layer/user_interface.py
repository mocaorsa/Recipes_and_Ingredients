"""Implements the applicatin user interface."""

from Recipes_and_Ingredients.application_base import ApplicationBase
from Recipes_and_Ingredients.service_layer.app_services import AppServices
from PrettyTable import prettytable
import inspect
import json
import sys

class UserInterface(ApplicationBase):
    """UserInterface Class Definition."""
    def __init__(self, config:dict)->None:
        """Initializes object. """
        self._config_dict = config
        self.META = config["meta"]
        super().__init__(subclass_name=self.__class__.__name__, 
				   logfile_prefix_name=self.META["log_prefix"])
        self.DB = AppServices(config)
        self._logger.log_debug(f'{inspect.currentframe().f_code.co_name}:It works!')

    def display_menu
        print(f'\n\n\t\tRecipes and Ingredients App')
        print()
        print(f'\t\tIngredients: {self.DB.get_all_ingredients()}')


    def process_menu_choice
        menu_choice = input("\tSelection: ")
        match menu_choice[0]:
            case '1': self.list_ingredients
            case '6': sys.exit
            case _: print(f'Invalid menu item: {menu_choice[0]}')
        
    def list_ingredients(self):
        try:
            results = self.app_services.get_all_ingredients()
            table = Prettytable()
            table.fieldnames = ['Ingredient', ] #add in all the ingredient headers
            for row in results
                table.add_row(row[0], row[1], row[2], row[3])
            print(results)

        except(Exception) as e:
            self._logger.log_error(f'{inspect.currentframe().f_code.co_name}: {e}')
    def start(self): 
        run until the user selects 6
        while True:
            

    def start(self):
        """Start main user interface."""
        self._logger.log_debug(f'{inspect.currentframe().f_code.co_name}: User interface started!')