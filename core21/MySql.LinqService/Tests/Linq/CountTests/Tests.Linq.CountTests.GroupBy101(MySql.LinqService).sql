BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Count(*)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

