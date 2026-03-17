-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TrimTestTable` `t1`
SET
	`t1`.`Data` = '***III***'
WHERE
	`t1`.`ID` = 3

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***OOO***'
WHERE
	`t`.`Data` = '***XXX***'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***SSS***'
WHERE
	`t`.`Data` = '***HHH***'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

