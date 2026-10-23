-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

