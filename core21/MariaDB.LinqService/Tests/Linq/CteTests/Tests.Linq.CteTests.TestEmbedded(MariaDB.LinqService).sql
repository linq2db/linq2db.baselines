BeforeExecute
-- MariaDB MySql.Official MySql

WITH `CTE_1` (`cte_field_1`)
AS
(
	SELECT
		`c_1`.`ChildID`
	FROM
		`Child` `c_1`
),
`CTE_2` (`cte_field_1`)
AS
(
	SELECT DISTINCT
		`t1`.`cte_field_1`
	FROM
		`CTE_1` `t1`
),
`CTE_3` (`cte_field_1`)
AS
(
	SELECT DISTINCT
		`t2`.`cte_field_1`
	FROM
		`CTE_2` `t2`
),
`CTE_4` (`cte_field_1`)
AS
(
	SELECT DISTINCT
		`t3`.`cte_field_1`
	FROM
		`CTE_3` `t3`
)
SELECT
	`w`.`ParentID`,
	`w`.`ChildID`
FROM
	`Child` `w`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`CTE_4` `t4`
		WHERE
			`t4`.`cte_field_1` = `w`.`ChildID`
	)

