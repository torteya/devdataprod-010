---
title: "Developing Data Products - Course Project"
author: "Carlos E. Martinez-Torteya"
date: "January 25, 2015"
output: html_document
---

This repository contains the files used in creating the shiny app found at: 
<a href=http://torteya.shinyapps.io/CM01>http://torteya.shinyapps.io/CM01</a>

This app estimates -using the most up to date data from CONSAR- the yield-at-retirement for every MXN (MX Peso) already in an AFORE account.

AFORE (Retirement Funds Administrators) is the Retirement Savings System in Mexico, overseen and regulated by the government, but run by private, for-profit enterprises. For further information on AFOREs, <a href=http://en.wikipedia.org/wiki/Retirement_Funds_Administrators>this Wikipedia page is a good start</a>. 

The input data for the calculation is:

* One's age: This is neccessary as the AFOREs are invested in four different age brackets, with different constraints on the risks they can take in investing the retirement funds, and have very different yields.
* One's AFORE company: Each AFORE has some freedom in choosing their investing strategy (they are heavily regulated), so they varying performances.

The data used for the calculation (AforeData.csv) was pulled from the official page from CONSAR about AFORE yields, found at: <a href=http://www.consar.gob.mx/compara_afore/compara_afores.aspx>http://www.consar.gob.mx/compara_afore/compara_afores.aspx</a>. The data was pulled Jan/25/2015.

For simplicity -and with a loss in accuracy- only the most recent data was used, not historical averages.
