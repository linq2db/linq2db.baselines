-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin NOT LIKE '%Persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin NOT LIKE '%persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

