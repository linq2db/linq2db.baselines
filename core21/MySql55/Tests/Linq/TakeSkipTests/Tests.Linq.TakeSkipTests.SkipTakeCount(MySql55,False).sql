BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`ChildID`
		FROM
			`Child` `t1`
		LIMIT 2, 5
	) `t2`

