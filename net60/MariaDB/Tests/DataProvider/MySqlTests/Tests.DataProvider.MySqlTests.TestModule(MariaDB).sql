BeforeExecute
-- MariaDB MySql.Official MySql

SET SQL_MODE='ORACLE'

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @i Int32
SET     @i = 1

CALL TEST_PROCEDURE(@i)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @i Int32
SET     @i = 1

CALL TEST_PACKAGE1.TEST_PROCEDURE(@i)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @i Int32
SET     @i = 1

CALL TEST_PACKAGE2.TEST_PROCEDURE(@i)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	`Person` `p`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

set session sql_mode=default

