BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `j` ON `p`.`ParentID` = `j`.`ParentID`
WHERE
	`p`.`ParentID` = 1

