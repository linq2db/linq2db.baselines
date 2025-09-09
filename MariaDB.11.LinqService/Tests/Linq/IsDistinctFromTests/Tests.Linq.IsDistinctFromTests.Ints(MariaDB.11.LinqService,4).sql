BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value

