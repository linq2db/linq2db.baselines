BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`gr`.`ParentID`,
	`gr`.`ChildID`
FROM
	`GrandChild` `gr`
GROUP BY
	`gr`.`ParentID`,
	`gr`.`ChildID`

