BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SET SQL_MODE='ORACLE'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @i Int32
SET     @i = 1

TEST_PROCEDURE

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @i Int32
SET     @i = 1

TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @i Int32
SET     @i = 1

TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

set session sql_mode=default

