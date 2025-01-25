BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	CASE
		WHEN `t1`.`ParentID` > 0 AND `t1`.`ChildID` <> `t1`.`ParentID`
			THEN 1
		ELSE 0
	END DESC,
	`t1`.`ChildID`

