-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO `Issue1622Table`
(
	`Id`,
	`SomeText`
)
VALUES
(
	@Id,
	@SomeText
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`,
	`e`.`SomeText`
FROM
	`Issue1622Table` `e`
WHERE
	`e`.`SomeText` = 'Value1_suffix'
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`,
	`e`.`SomeText`
FROM
	`Issue1622Table` `e`
WHERE
	`e`.`Id` = 1
LIMIT 2

