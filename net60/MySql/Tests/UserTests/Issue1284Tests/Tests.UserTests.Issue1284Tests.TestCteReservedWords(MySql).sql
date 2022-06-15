BeforeExecute
-- MySql MySql.Official MySql

WITH `CTE_1` (`Operator`)
AS
(
	SELECT
		`x`.`LastName`
	FROM
		`Person` `x`
)
SELECT
	`t1`.`Operator`
FROM
	`CTE_1` `t1`
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`LastName`
FROM
	`Person` `x`
LIMIT 1

