BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ChildID`,
	`d`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN `Child` `d` ON Cast(`m_1`.`ParentID` as SIGNED) = `d`.`ParentID`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

