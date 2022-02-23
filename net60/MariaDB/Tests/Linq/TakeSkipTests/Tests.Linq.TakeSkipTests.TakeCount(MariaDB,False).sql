BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`ChildID`
		FROM
			`Child` `t1`
		LIMIT 5
	) `t2`

