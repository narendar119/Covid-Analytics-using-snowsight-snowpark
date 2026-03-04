-- ==========================================
-- DATABASE & SCHEMA SETUP
-- ==========================================

CREATE DATABASE IF NOT EXISTS COVID_ANALYSIS_DB;
USE DATABASE COVID_ANALYSIS_DB;

CREATE SCHEMA IF NOT EXISTS RAW_DATA;
CREATE SCHEMA IF NOT EXISTS ANALYTICS;

USE SCHEMA RAW_DATA;

-- ==========================================
-- FILE FORMAT
-- ==========================================

CREATE OR REPLACE FILE FORMAT CSV_FORMAT
TYPE = CSV
FIELD_DELIMITER = ','
SKIP_HEADER = 1
FIELD_OPTIONALLY_ENCLOSED_BY = '"'
NULL_IF = ('NULL', 'null', '');

-- ==========================================
-- INTERNAL STAGE
-- ==========================================

CREATE OR REPLACE STAGE COVID_STAGE
FILE_FORMAT = CSV_FORMAT;