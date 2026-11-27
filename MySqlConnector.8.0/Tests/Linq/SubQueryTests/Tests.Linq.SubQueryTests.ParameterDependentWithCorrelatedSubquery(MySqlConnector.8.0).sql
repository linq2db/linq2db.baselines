-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `AliasBaseTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	10
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `AliasBaseTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	20
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `AliasDetailTable`
(
	`Id`,
	`OutId`,
	`Cnt`
)
VALUES
(
	1,
	1,
	3
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `AliasDetailTable`
(
	`Id`,
	`OutId`,
	`Cnt`
)
VALUES
(
	2,
	1,
	5
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `AliasDetailTable`
(
	`Id`,
	`OutId`,
	`Cnt`
)
VALUES
(
	3,
	2,
	7
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @minValue Int32
SET     @minValue = 15

SELECT
	`o`.`Id`,
	`o`.`Value`,
	(
		SELECT
			COUNT(*)
		FROM
			`AliasDetailTable` `i`
		WHERE
			`i`.`OutId` = `o`.`Id`
	)
FROM
	`AliasBaseTable` `o`
WHERE
	`o`.`Value` >= @minValue

