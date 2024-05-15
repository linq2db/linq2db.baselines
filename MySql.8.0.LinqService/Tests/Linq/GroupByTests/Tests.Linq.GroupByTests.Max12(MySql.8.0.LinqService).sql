BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	MAX(CASE
		WHEN `t1`.`ChildID` > 20 THEN 1
		ELSE 0
	END)
FROM
	`Child` `t1`

