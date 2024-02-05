BeforeExecute
-- MariaDB MySqlConnector MySql

SET SQL_MODE='ORACLE'

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @i Int32
SET     @i = 1

TEST_PROCEDURE

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @i Int32
SET     @i = 1

TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @i Int32
SET     @i = 1

TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

set session sql_mode=default

