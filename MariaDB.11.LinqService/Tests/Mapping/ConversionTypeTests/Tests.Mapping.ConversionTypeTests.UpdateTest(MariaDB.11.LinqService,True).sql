BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`TrimTestTable` `t1`
SET
	`t1`.`Data` = '***III***'
WHERE
	`t1`.`ID` = 3

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***OOO***'
WHERE
	`t`.`Data` = '***XXX***'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***SSS***'
WHERE
	`t`.`Data` = '***HHH***'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

