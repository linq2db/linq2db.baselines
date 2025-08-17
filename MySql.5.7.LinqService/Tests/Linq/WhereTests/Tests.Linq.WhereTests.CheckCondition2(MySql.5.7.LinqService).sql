BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1 AND `p`.`Value1` = 1 OR `p`.`ParentID` = 2 AND (`p`.`ParentID` <> 3 OR `p`.`ParentID` = 4) AND `p`.`Value1` IS NOT NULL

