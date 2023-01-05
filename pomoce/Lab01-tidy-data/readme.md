# Ćwiczenie 1 - TIER protocol i tidy data

Original data pew.sav is available in /OriginalData folder. It's also copied to /AnalysisData.

The whole script is in /CommandFiles/lab1.ipynb, where code is commented and its role is described.

Data after analysis is available in:
- /AnalysisData/pew.csv - file contains extracted info from pew.sav. Only information about religion and income is extracted. Headers of file are:
  - reltrad - string, info about religion/tradition confessed by each participant.
  - income - string, info about range of annual income.

- /AnalysisData/pew_cum.csv - file contains cumulated information from pew.csv. Headers of file are:
  - reltrad - string, info about religion/tradition confessed by participants.
  - income - string, info about range of annual income.
  - count - variable, combined number of people who gave the same answers about religion and income.