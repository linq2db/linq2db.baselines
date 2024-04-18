BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Parent` `_`
		INNER JOIN `Child` `c_1` ON Cast(`_`.`ParentID` as SIGNED) = `c_1`.`ParentID`
WHERE
	`_`.`ParentID` = 1

