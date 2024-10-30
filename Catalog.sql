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



-- Rebuild a full-text catalog
-- Run the Transact-SQL statement ALTER FULLTEXT CATALOG ... REBUILD, or do the following things in SQL Server Management Studio (SSMS).

-- In SSMS, in Object Explorer, expand the server, expand Databases, and then expand the database that contains the full-text catalog that you want to rebuild.

-- Expand Storage, and then expand Full Text Catalogs.

-- Right-click the name of the full-text catalog that you want to rebuild, and select Rebuild.

-- To the question Do you want to delete the full-text catalog and rebuild it?, click OK.

-- In the Rebuild Full-Text Catalog dialog box, click Close.

-- Rebuild all full-text catalogs for a database
-- In SSMS, in Object Explorer, expand the server, expand Databases, and then expand the database that contains the full-text catalogs that you want to rebuild.

-- Expand Storage, and then right-click Full Text Catalogs.

-- Select Rebuild All.

-- To the question, Do you want to delete all full-text catalogs and rebuild them?, click OK.

-- In the Rebuild All Full-Text Catalogs dialog box, click Close.

-- Remove a full-text catalog from a database
-- Run the Transact-SQL statement DROP FULLTEXT CATALOG, or do the following things in SQL Server Management Studio (SSMS).

-- In SSMS, in Object Explorer, expand the server, expand Databases, and expand the database that contains the full-text catalog you want to remove.

-- Expand Storage, and expand Full Text Catalogs.

-- Right-click the full-text catalog that you want to remove, and then select Delete.

-- In the Delete Objects dialog box, click OK.