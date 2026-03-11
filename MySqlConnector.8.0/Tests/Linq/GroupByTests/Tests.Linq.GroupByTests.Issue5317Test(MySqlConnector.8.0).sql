-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`ReferenceName`
FROM
	`TestTable` `g_1`
		INNER JOIN LATERAL (
			SELECT
				`a_Reference`.`Name` as `ReferenceName`
			FROM
				`TestTable` `t1`
					INNER JOIN `Reference` `a_Reference` ON `t1`.`ReferenceId` = `a_Reference`.`Id`
			WHERE
				`g_1`.`Id` = `t1`.`Id`
			LIMIT 1
		) `t2` ON 1=1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`ReferenceId`,
	`a_Reference`.`Id`,
	`a_Reference`.`Name`
FROM
	`TestTable` `t1`
		INNER JOIN `Reference` `a_Reference` ON `t1`.`ReferenceId` = `a_Reference`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`ReferenceId`
FROM
	`TestTable` `t1`

