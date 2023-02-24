BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Max(`ch`.`ParentID`)
FROM
	`Child` `ch`
GROUP BY
	`ch`.`ParentID`

