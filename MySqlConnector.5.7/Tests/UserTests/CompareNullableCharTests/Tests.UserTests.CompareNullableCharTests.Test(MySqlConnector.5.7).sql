-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Field1`,
	`previous`.`Field1`
FROM
	`Table1` `t1`,
	`Table1` `previous`
WHERE
	`t1`.`Foeld2` = `previous`.`Foeld2` OR `t1`.`Foeld2` IS NULL AND `previous`.`Foeld2` IS NULL

