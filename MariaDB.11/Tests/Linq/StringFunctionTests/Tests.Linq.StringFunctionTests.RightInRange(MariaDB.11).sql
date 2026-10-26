-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	RIGHT(`r`.`S`, `r`.`N`)
FROM
	`RightValues` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`S`,
	`r`.`N`
FROM
	`RightValues` `r`
WHERE
	RIGHT(`r`.`S`, `r`.`N`) = 'ohn'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

