-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Grace Int64
SET     @Grace = 4567
DECLARE @Required Int64
SET     @Required = 4567

INSERT INTO `OptionalDurationRow`
(
	`Id`,
	`Grace`,
	`Required`
)
VALUES
(
	@Id,
	@Grace,
	@Required
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Grace Int64
SET     @Grace = NULL
DECLARE @Required Int64
SET     @Required = 4567

INSERT INTO `OptionalDurationRow`
(
	`Id`,
	`Grace`,
	`Required`
)
VALUES
(
	@Id,
	@Grace,
	@Required
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Grace`,
	`t1`.`Required`
FROM
	`OptionalDurationRow` `t1`
ORDER BY
	`t1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Grace Int64
SET     @Grace = NULL

UPDATE
	`OptionalDurationRow` `r`
SET
	`r`.`Grace` = @Grace
WHERE
	`r`.`Id` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Grace Int64
SET     @Grace = 4567

UPDATE
	`OptionalDurationRow` `r`
SET
	`r`.`Grace` = @Grace
WHERE
	`r`.`Id` = 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Grace`,
	`t1`.`Required`
FROM
	`OptionalDurationRow` `t1`
ORDER BY
	`t1`.`Id`

