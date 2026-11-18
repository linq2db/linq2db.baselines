-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntValue Int32
SET     @IntValue = 42
DECLARE @StrValue VarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO `Issue4646Table`
(
	`Id`,
	`IntValue`,
	`StrValue`
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @StrValue VarChar -- String
SET     @StrValue = NULL

INSERT INTO `Issue4646Table`
(
	`Id`,
	`IntValue`,
	`StrValue`
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	`r`.`IntValue`,
	`r`.`StrValue`
FROM
	`Issue4646Table` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	`r`.`IntValue`,
	`r`.`StrValue`
FROM
	`Issue4646Table` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

