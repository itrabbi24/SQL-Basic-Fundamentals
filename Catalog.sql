-- Create and Manage Full-Text Catalogs

-- Create a full-text catalog
CREATE FULLTEXT CATALOG catalog_name
WITH (LANGUAGE = language_name);

-- Drop a full-text catalog
DROP FULLTEXT CATALOG catalog_name

-- Alter a full-text catalog
ALTER FULLTEXT CATALOG catalog_name
WITH (LANGUAGE = language_name);

-- List full-text catalogs
SELECT * FROM sys.fulltext_catalogs

-- List full-text languages
SELECT * FROM sys.fulltext_languages

