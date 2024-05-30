BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin NOT LIKE '%Persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Patient` `p`
WHERE
	`p`.`Diagnosis` COLLATE utf8_bin NOT LIKE '%persecution' ESCAPE '~' AND
	`p`.`PersonID` = 2

