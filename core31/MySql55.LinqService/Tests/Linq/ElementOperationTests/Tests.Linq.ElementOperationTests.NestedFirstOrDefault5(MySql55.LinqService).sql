BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`key_data_result`.`ParentID`,
	`key_data_result`.`Value1`,
	`key_data_result`.`ParentID_1`,
	`key_data_result`.`ChildID`,
	`key_data_result`.`GrandChildID`,
	`detail`.`ParentID`,
	`detail`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`a_Parent`.`ParentID`,
			`a_Parent`.`Value1`,
			`p`.`ParentID` as `ParentID_1`,
			`p`.`ChildID`,
			`p`.`GrandChildID`
		FROM
			`GrandChild` `p`
				INNER JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
				INNER JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`p`.`ChildID` > 0
	) `key_data_result`
		INNER JOIN `Child` `detail` ON `key_data_result`.`ParentID` = `detail`.`ParentID`
ORDER BY
	`detail`.`ChildID`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`,
	`p`.`ParentID`,
	`p`.`ChildID`,
	`p`.`GrandChildID`
FROM
	`GrandChild` `p`
		INNER JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
		INNER JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`p`.`ChildID` > 0

