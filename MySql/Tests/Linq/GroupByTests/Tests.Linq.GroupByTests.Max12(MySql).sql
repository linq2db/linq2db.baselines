BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Max(CASE
		WHEN `t1`.`ChildID` > 20 THEN 1
		ELSE 0
	END)
FROM
	`Child` `t1`

