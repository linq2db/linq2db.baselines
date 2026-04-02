-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(4) -- String
SET     @Text = 'abcd'

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text VarChar(6) -- String
SET     @Text = 'aabbcc'

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`infeed`.`Id`,
	`infeed`.`Text`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	`infeed`.`Text` REGEXP 'aa.*'
LIMIT 2

