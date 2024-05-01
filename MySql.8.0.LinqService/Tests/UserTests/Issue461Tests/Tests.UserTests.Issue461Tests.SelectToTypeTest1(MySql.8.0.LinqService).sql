BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id_1`,
	`t1`.`Id`
FROM
	`Parent` `sep`
		LEFT JOIN (
			SELECT
				`l`.`ParentID` + 1 as `Id`,
				`l`.`ParentID` + 1 as `Id_1`
			FROM
				`Child` `l`
			LIMIT 1
		) `t1` ON 1=1

