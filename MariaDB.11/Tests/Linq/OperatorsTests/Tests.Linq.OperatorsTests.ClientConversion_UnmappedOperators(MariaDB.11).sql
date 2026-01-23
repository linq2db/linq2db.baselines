-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`i`.`Id`
FROM
	`Tender` `i`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Tender` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`
FROM
	`Tender` `r`
WHERE
	`r`.`Id` = '00000000-0000-0000-0000-000000000000'
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`i`.`Id`
FROM
	`Tender` `i`
LIMIT 1

