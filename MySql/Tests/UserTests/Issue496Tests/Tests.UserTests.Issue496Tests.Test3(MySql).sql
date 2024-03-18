BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`a_Children`.`ChildID`,
	`a_Children`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON Cast(`p`.`ParentID` as SIGNED) = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` = 1

