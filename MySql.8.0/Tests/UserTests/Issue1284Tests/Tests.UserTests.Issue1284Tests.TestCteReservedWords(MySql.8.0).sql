-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`person_1`.`LastName`
FROM
	`Person` `person_1`
LIMIT 1

