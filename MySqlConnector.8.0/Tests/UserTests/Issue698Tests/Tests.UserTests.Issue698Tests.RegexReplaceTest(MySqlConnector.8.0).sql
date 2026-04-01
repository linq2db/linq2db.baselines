-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(6) -- String
SET     @Text = 'ab12cd'

INSERT INTO `InfeedAdvicePositionDTO`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text VarChar(10) -- String
SET     @Text = 'AA11bb22cc'

INSERT INTO `InfeedAdvicePositionDTO`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	REGEXP_REPLACE(`t1`.`Text`, '[0-9]+', '')
FROM
	`InfeedAdvicePositionDTO` `t1`
ORDER BY
	`t1`.`Id`

