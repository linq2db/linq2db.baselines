BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Sum(`ch`.`ParentID`)
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `pg` ON `ch`.`ParentID` = `pg`.`ParentID`
GROUP BY
	`ch`.`ChildID`

