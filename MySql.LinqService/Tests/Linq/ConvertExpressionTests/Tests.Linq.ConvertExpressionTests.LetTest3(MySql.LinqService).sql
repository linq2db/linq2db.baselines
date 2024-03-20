BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t2`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`t1`.`ParentID`
			FROM
				`Child` `t1`
			LIMIT 1
		) `t2` ON 1=1

