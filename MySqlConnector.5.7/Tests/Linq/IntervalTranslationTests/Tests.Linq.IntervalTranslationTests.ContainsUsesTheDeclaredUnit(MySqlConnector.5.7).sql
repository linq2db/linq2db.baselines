-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	`r`.`InSeconds` IN (900, 2700)
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	`r`.`InTicks` IN (9000000000, 27000000000)
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`InSeconds` IN (900, 2700)
FROM
	`DurationRow` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @InSeconds Int64
SET     @InSeconds = 1800

SELECT
	CASE
		WHEN @InSeconds IN (
			SELECT
				`r`.`InSeconds`
			FROM
				`DurationRow` `r`
		)
			THEN 1
		ELSE 0
	END as `c1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @InTicks Int64
SET     @InTicks = 54000000000

SELECT
	CASE
		WHEN @InTicks IN (
			SELECT
				`r`.`InTicks`
			FROM
				`DurationRow` `r`
		)
			THEN 1
		ELSE 0
	END as `c1`

