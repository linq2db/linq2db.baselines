BeforeExecute
-- MySql MySql.Official MySql

UPDATE
	`LinqDataTypes` `p`
SET
	`p`.`BoolValue` = 1,
	`p`.`DateTimeValue` = CURRENT_TIMESTAMP
WHERE
	`p`.`ID` = 100000

