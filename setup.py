from setuptools import setup, find_packages


def return_version():
	return __import__('moshion').get_version()


setup(
	name='python-moshion',
	packages=find_packages(include=['moshion', 'moshion.*']),
	scripts=['moshion/scripts/gomoshion.py'],
	version=return_version(),
	python_requires='>=3.8',
	description="Datamoshing Motion",
	long_description="""
		python-moshion - Datamoshing Motion
		(c) 2014 Robert Moggach, Fabio Piparo & contributors.
		Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php

		moshion is a standalone tool and library used to datamosh
		two video sequences such that the motion of both clips is retained.

		""",
	classifiers=[
		'Development Status :: 4 - Beta',
		'Intended Audience :: Developers',
		'License :: OSI Approved :: MIT License',
		'Programming Language :: Python',
		'Programming Language :: Python :: 3',
		'Natural Language :: English',
		'Operating System :: POSIX :: Linux',
		'Operating System :: MacOS :: MacOS X',
	],
	keywords='image video encoding art',
	author='Robert Moggach',
	author_email='rob@moggach.com',
	maintainer='Robert Moggach',
	maintainer_email='rob@moggach.com',
	license='MIT'
)
