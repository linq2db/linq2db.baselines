BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`ch`.`ParentID` * 1000
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` * 1000 > 2000

