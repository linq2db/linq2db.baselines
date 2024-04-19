BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET SQL_MODE='ORACLE'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @i Int32
SET     @i = 1

TEST_PROCEDURE

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @i Int32
SET     @i = 1

TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @i Int32
SET     @i = 1

TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

set session sql_mode=default

