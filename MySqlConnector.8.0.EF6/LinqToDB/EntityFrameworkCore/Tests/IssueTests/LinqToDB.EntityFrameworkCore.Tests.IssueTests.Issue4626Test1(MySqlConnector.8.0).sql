BeginTransaction(RepeatableRead)


--  MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Id`,
	`d_1`.`Key_1`,
	`d_1`.`SUM_1`,
	`d_1`.`Issue4626AnyValue`
FROM
	`Parents` `m_1`
		INNER JOIN (
			SELECT
				`d`.`ParentId` as `Key_1`,
				SUM(`d`.`Id`) as `SUM_1`,
				ANY_VALUE(`d`.`Name`) as `Issue4626AnyValue`
			FROM
				`Children` `d`
			GROUP BY
				`d`.`ParentId`
		) `d_1` ON `m_1`.`Id` = `d_1`.`Key_1`



DisposeTransaction


--  MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`Id`
FROM
	`Parents` `c_1`



