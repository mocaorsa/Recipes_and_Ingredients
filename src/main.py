"""Entry point for the Employee Training Application."""

import json
#20251026 Added for MySQL connection testing
#import mysql.connector
from argparse import ArgumentParser
from Recipes_and_Ingredients.presentation_layer.user_interface import UserInterface
#20251026 Added for MySQL connection testing
from Recipes_and_Ingredients.persistence_layer.mysql_persistence_wrapper import MySQLPersistenceWrapper


def main():
	"""Entry point."""
	args = configure_and_parse_commandline_arguments()

	if args.configfile:
		config = None
		with open(args.configfile, 'r') as f:
			config = json.loads(f.read())

	# Uncomment to run the User Interface
	#ui = UserInterface(config)
	#ui.start()

	#More debugging added on 20251110
	app_services = app_services(config)
	results - app_services.get_all_ingredients()

	for row in results:
			print(f'{row(1)} {row(2)} {row(3)} {row(4)}')

	#Use this for aquick MySQL select all ingredients test
	db = MySqlSelectAllIngredientsTest(config)	


def configure_and_parse_commandline_arguments():
	"""Configure and parse command-line arguments."""
	parser = ArgumentParser(
	prog='main.py',
	description='Start the application with a configuration file.',
	epilog='POC: Your Name | your@email')

	parser.add_argument('-c','--configfile',
					help="Configuration file to load.",
					required=True)
	args = parser.parse_args()
	return args



if __name__ == "__main__":
	main()