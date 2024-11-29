BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Child` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH `CTE1_` (`unused`)
AS
(
	SELECT
		1
	FROM
		`Child` `t1`
)
SELECT
	COUNT(*)
FROM
	`CTE1_` `t2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH `CTE1_` (`unused`)
AS
(
	SELECT
		1
	FROM
		`Child` `c_1`
)
SELECT
	COUNT(*)
FROM
	`CTE1_` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH `CTE1_` (`unused`)
AS
(
	SELECT
		1 as `unused`
	FROM
		`Child` `c_1`
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`CTE1_` `t1`
		)
			THEN 1
		ELSE 0
	END as `c1`

