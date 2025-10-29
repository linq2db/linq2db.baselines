-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ NO_MERGE(c_1, p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

