#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import selenium
import time
from selenium import webdriver

driver = webdriver.Chrome(executable_path='H:/Specialization/DataScience_2019501092/DADV/Assignments/chromedriver_win32/chromedriver')
# driver.get("https://www.imdb.com/interfaces/")


driver.get("https://datasets.imdbws.com/")
time.sleep(4)
driver.find_element_by_partial_link_text("name.basics.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.akas.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.basics.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.crew.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.episode.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.principals.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.ratings.tsv.gz").click()
time.sleep(4)