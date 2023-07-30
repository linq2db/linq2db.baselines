BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ SET_VAR(aaa) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

