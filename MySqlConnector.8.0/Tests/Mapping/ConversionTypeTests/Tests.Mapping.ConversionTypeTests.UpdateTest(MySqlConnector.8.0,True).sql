BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`TrimTestTable` `t1`
SET
	`t1`.`Data` = '***III***'
WHERE
	`t1`.`ID` = 3

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***OOO***'
WHERE
	`t`.`Data` = '***XXX***'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***SSS***'
WHERE
	`t`.`Data` = '***HHH***'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

