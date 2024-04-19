BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ParentID` + `p`.`ParentID`
FROM
	`Child` `t`
		INNER JOIN `Parent` `p` ON `t`.`ParentID` = `p`.`ParentID`
WHERE
	`t`.`ParentID` + `p`.`ParentID` > 2

