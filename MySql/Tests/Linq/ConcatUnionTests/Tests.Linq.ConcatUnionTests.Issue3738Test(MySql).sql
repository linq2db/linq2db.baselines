BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Concat('I-', `x`.`PersonID`),
	`x`.`FirstName`
FROM
	`Person` `x`
UNION ALL
SELECT
	NULL,
	Concat('QUASI-', `x_1`.`FirstName`)
FROM
	`Person` `x_1`

