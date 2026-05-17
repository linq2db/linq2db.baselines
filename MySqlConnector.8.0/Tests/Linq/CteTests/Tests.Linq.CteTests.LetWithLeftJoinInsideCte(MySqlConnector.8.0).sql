-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @S1 VarChar(2) -- String
SET     @S1 = 's1'

INSERT INTO `Projection1`
(
	`S1`
)
VALUES
(
	@S1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @S1 VarChar(2) -- String
SET     @S1 = 's1'

INSERT INTO `Projection2`
(
	`S1`
)
VALUES
(
	@S1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE_1` (`S1`)
AS
(
	SELECT
		`projection2_1`.`S1`
	FROM
		`Projection1` `t1`
			LEFT JOIN `Projection2` `projection2_1` ON `t1`.`S1` = `projection2_1`.`S1` OR `t1`.`S1` IS NULL AND `projection2_1`.`S1` IS NULL
)
SELECT
	`t2`.`S1`
FROM
	`CTE_1` `t2`

