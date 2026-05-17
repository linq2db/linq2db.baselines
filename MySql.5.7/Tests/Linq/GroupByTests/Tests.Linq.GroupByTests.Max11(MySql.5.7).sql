-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	MAX(CASE
		WHEN `t1`.`ChildID` > 20 THEN 1
		ELSE 0
	END)
FROM
	`Child` `t1`

