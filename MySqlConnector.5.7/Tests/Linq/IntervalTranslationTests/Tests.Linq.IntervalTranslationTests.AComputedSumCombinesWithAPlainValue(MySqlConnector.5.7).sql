-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 5400
DECLARE @InTicks Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 5400

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
DECLARE @Ticks Int64
SET     @Ticks = 3000000000

SELECT
	CAST(CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED) + @Ticks AS SIGNED),
	CAST(@Ticks + CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED) AS SIGNED),
	CAST(CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED) - @Ticks AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Ticks Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED) = @Ticks

