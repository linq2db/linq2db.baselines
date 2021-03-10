BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`ch`.`ChildID` + 1,
	Sum(`ch`.`ParentID`)
FROM
	`Child` `ch`
GROUP BY
	`ch`.`ChildID` + 1

