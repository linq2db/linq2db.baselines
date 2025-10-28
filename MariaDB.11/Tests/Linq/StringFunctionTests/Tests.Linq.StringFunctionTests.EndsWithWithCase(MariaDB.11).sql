BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin NOT LIKE '%Persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin NOT LIKE '%persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

