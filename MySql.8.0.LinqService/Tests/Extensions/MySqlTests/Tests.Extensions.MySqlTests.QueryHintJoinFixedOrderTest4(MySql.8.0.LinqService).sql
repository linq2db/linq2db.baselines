BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ JOIN_FIXED_ORDER(c_1, p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

