-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`r`.`A` AS DECIMAL(29, 10)) * -5.5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(-5.5) * `r`.`B`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`r`.`A` AS DOUBLE) * -5.5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`r`.`A` AS DOUBLE) * 9.9999999999999995E-08
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

