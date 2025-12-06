-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ NO_BNL(p) NO_BNL(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

