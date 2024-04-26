BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Concat('1', `t1`.`FirstName` COLLATE utf8_bin, '2')
FROM
	`Person` `t1`

