BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Concat('I-', Cast(`x`.`PersonID` as CHAR(11))),
	`x`.`FirstName`
FROM
	`Person` `x`
UNION ALL
SELECT
	NULL,
	Concat('QUASI-', `x_1`.`FirstName`)
FROM
	`Person` `x_1`

