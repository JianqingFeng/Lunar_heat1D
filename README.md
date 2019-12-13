# Lunar_heat1D

Thermal model for Lunar surface

Author: Paul O. Hayne

Date: September 8, 2017

Modified by Jianqing Feng on December 12, 2019

This repository contains source code and examples for the heat1d planetary thermal model. In its present form, heat1d uses a finite difference approach to solve the one-dimensional heat equation. The Original version of this code comes from Paul O. Hayne, which can be download from https://github.com/phayne/heat1d. In this version we change the solar incidence angle dependent albedo function and the thermal conductivities of the lunar regolith.

This is the MATLAB "MEX"-file implementation of the thermal code. It is based on the original C-code, adapted to be compiled and executed from within the MATLAB environment.

heat1d_mex.c - the core program, including necessary MATLAB MEX-file headers and options, functions, etc.

heat1dfun.h - header file for heat1dfun.h containing function prototypes

orbitfun.h - header file for orbitfun.c 

Thermal_Model_Example.m - An example in MATLAB language 
