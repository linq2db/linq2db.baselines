-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Key_1`,
	`d`.`FirstName`,
	`d`.`PersonID`,
	`d`.`LastName`,
	`d`.`MiddleName`,
	`d`.`Gender`
FROM
	(
		SELECT DISTINCT
			`t1`.`FirstName` as `Key_1`
		FROM
			`Person` `t1`
	) `m_1`
		INNER JOIN `Person` `d` ON `m_1`.`Key_1` = `d`.`FirstName`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`Key_1`,
	`t2`.`Key_1`
FROM
	(
		SELECT DISTINCT
			`t1`.`FirstName` as `Key_1`
		FROM
			`Person` `t1`
	) `t2`

