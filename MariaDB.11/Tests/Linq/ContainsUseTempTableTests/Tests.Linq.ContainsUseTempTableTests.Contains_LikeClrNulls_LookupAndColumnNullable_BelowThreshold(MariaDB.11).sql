-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	(`r`.`Tag` IN ('tag1', 'tag2') OR `r`.`Tag` IS NULL)
ORDER BY
	`r`.`Id`

