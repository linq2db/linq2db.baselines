BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

WITH `CTE_1` (`Obj_Operator`)
AS
(
	SELECT
		`x`.`LastName`
	FROM
		`Person` `x`
)
SELECT
	`t1`.`Obj_Operator`
FROM
	`CTE_1` `t1`
LIMIT 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`person_1`.`LastName`
FROM
	`Person` `person_1`
LIMIT 1

