-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO `DuRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = 20

INSERT INTO `DuRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Key Int32
SET     @Key = 10

SELECT
	`x`.`Id`,
	`x`.`Key`
FROM
	`DuRow` `x`
WHERE
	`x`.`Key` = @Key

