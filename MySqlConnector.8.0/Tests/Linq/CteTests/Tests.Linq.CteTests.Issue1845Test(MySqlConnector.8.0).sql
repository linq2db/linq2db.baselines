-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE_1` (`Value1`, `Value2`)
AS
(
	SELECT
		`o`.`FirstName`,
		`o`.`LastName`
	FROM
		`Person` `o`
),
`CTE_2` (`Value1`, `Value2`)
AS
(
	SELECT
		`t1`.`Value1`,
		`t1`.`Value2`
	FROM
		`CTE_1` `t1`
	UNION
	SELECT
		`t2`.`Value1`,
		`t2`.`Value2`
	FROM
		(
			SELECT 'Somebody' AS `Value1`, 'Unimportant' AS `Value2`) `t2`
)
SELECT
	`t3`.`Value1`,
	`t3`.`Value2`
FROM
	`CTE_2` `t3`

