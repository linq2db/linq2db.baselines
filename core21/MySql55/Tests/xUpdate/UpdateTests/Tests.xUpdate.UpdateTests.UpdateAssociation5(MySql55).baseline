BeforeExecute
-- MySql55 MySql.Official MySql

UPDATE
	`LinqDataTypes` `t1`
		INNER JOIN `Parent` `a_Table1` ON `a_Table1`.`ParentID` = `t1`.`ID`
SET
	`t1`.`BoolValue` = (NOT EXISTS(
		SELECT
			*
		FROM
			`Parent` `x`
		WHERE
			`t1`.`ID` = `x`.`ParentID` AND NOT (`x`.`Value1` IS NOT NULL AND `x`.`Value1` = 1)
	))
WHERE
	`a_Table1`.`ParentID` IN (10000, 20000)

