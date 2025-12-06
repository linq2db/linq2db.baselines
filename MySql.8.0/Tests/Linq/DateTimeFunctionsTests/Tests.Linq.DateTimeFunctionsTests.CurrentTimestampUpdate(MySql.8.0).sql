-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`LinqDataTypes` `p`
SET
	`p`.`BoolValue` = 1,
	`p`.`DateTimeValue` = CURRENT_TIMESTAMP
WHERE
	`p`.`ID` = 100000

