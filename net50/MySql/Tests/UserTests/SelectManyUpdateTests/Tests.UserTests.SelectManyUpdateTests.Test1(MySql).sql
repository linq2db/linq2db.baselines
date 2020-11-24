BeforeExecute
-- MySql MySql.Official MySql

UPDATE
	`Parent` `x`
		INNER JOIN `Parent` `c_1` ON `x`.`ParentID` = `c_1`.`Value1`
SET
	`x`.`Value1` = NULL
WHERE
	`x`.`ParentID` IN (0, 0)

