

-- MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Id`,
	`d_1`.`Key_1`,
	`d_1`.`Sum_1`,
	`d_1`.`ConcatStringsNullable`
FROM
	`Parents` `m_1`
		INNER JOIN LATERAL (
			SELECT
				`d`.`ParentId` as `Key_1`,
				SUM(`d`.`Id`) as `Sum_1`,
				GROUP_CONCAT(`d`.`Name` SEPARATOR ', ') as `ConcatStringsNullable`
			FROM
				`Children` `d`
			WHERE
				`m_1`.`Id` = `d`.`ParentId`
			GROUP BY
				`d`.`ParentId`
		) `d_1` ON 1=1





-- MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`Id`
FROM
	`Parents` `c_1`



