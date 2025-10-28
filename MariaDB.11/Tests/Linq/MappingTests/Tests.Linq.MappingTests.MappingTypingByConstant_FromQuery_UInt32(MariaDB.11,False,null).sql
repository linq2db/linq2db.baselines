BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value UInt32
SET     @value = NULL

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS UNSIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value UInt32
SET     @value = 2147483648

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS UNSIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

