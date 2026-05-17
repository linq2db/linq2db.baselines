-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE 'Hall%' ESCAPE '~'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE 'hall%' ESCAPE '~'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `r`
WHERE
	Lower(`r`.`Diagnosis`) LIKE 'hall%' ESCAPE '~'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Patient` `r`
WHERE
	Lower(`r`.`Diagnosis`) LIKE 'hall%' ESCAPE '~'

