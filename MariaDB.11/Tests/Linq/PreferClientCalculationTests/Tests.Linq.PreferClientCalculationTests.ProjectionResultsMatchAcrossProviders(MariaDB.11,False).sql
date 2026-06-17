-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`e`.`Id`,
	`e`.`Value1` + 12345
FROM
	`ClientCalcEntity` `e`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Name`
FROM
	`ClientCalcEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CASE
		WHEN `e`.`Id` > 1 THEN `e`.`Value1`
		ELSE `e`.`Value2`
	END
FROM
	`ClientCalcEntity` `e`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Name`
FROM
	`ClientCalcEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	-`e`.`Value1`
FROM
	`ClientCalcEntity` `e`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Name`
FROM
	`ClientCalcEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`e`.`Value1` + ABS(`e`.`Value2`)
FROM
	`ClientCalcEntity` `e`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Name`
FROM
	`ClientCalcEntity` `t1`

