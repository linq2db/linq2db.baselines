-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 900
DECLARE @InTicks Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 900

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @InSeconds Int64
SET     @InSeconds = 1800
DECLARE @InTicks Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 1800

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 3
DECLARE @InSeconds Int64
SET     @InSeconds = 2700
DECLARE @InTicks Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 2700

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Ticks Int64
SET     @Ticks = 18000000000

SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` AS SIGNED) * 10000000 > @Ticks
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Ticks Int64
SET     @Ticks = 18000000000

SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` AS SIGNED) * 10000000 > @Ticks
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` AS SIGNED) * 10000000 > 18000000000
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InTicks` AS SIGNED) > 18000000000
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` AS SIGNED) * 10000000 > 0
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Ticks Int64
SET     @Ticks = 0

SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` AS SIGNED) * 10000000 > @Ticks
ORDER BY
	`r`.`Id`

