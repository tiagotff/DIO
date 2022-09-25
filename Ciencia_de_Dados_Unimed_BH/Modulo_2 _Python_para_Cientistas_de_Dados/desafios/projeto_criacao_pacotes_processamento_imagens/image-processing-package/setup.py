from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="image_processing-test1",
    version="0.0.1",
    author="Tiago de Freitas Faustino",
    author_email="t.faustino91@gmail.com",
    description="Test 1 version - Image processing. This project belongs to Karina Tiemi Kato, Tech Lead, Machine Learning Engineer, Data Scientist Specialist at Take. This package is a demo for simulation of upload on the Test Pypi website, and it's from one of the classes from Tech Generation Unimed - BH - Data Science Bootcamp. E-mail:karinatkato@gmail.com",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="my_github_repository_project_link"
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',)