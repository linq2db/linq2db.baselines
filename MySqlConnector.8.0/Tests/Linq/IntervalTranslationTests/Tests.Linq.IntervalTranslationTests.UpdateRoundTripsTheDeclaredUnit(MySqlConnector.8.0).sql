-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 4567
DECLARE @InTicks Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 4567

INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @InSeconds Int64
SET     @InSeconds = 19260
DECLARE @InTicks Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`DurationRow` `t1`
SET
	`t1`.`InSeconds` = @InSeconds,
	`t1`.`InTicks` = @InTicks,
	`t1`.`Undeclared` = @Undeclared,
	`t1`.`UndeclaredSeconds` = @UndeclaredSeconds
WHERE
	`t1`.`Id` = @Id

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @InSeconds Int64
SET     @InSeconds = 4567
DECLARE @InTicks Int64
SET     @InTicks = 45670000000

UPDATE
	`DurationRow` `r`
SET
	`r`.`InSeconds` = @InSeconds,
	`r`.`InTicks` = @InTicks
WHERE
	`r`.`Id` = 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

