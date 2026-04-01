-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(10) -- String
SET     @Text = 'aa11aa22aa'

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
	REGEXP_REPLACE(`t1`.`Text`, 'aa', 'X', 3, 1)
FROM
	`InfeedAdvicePositionDTO` `t1`
LIMIT 2

