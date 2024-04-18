BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Key_1`
FROM
	(
		SELECT
			Extract(year from `a_Types`.`DateTimeValue`) as `Key_1`
		FROM
			`Parent` `selectParam`
				LEFT JOIN `LinqDataTypes` `a_Types` ON `selectParam`.`ParentID` = `a_Types`.`ID`
	) `t1`
GROUP BY
	`t1`.`Key_1`

