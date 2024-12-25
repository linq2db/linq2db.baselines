BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Child` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE1_` (`c1`)
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE1_` (`c1`)
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE1_` (`c1`)
AS
(
	SELECT
		1 as `c1`
	FROM
		`Child` `c_1`
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			`CTE1_` `t1`
	) as `c1`

