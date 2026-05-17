-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`TrimTestTable` `t1`
SET
	`t1`.`Data` = '***III***'
WHERE
	`t1`.`ID` = 3

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***OOO***'
WHERE
	`t`.`Data` = '***XXX***'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***SSS***'
WHERE
	`t`.`Data` = '***HHH***'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

