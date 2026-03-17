-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id`
			UNION ALL
			SELECT 4) `r` ON `t`.`Id` = `r`.`Id`

