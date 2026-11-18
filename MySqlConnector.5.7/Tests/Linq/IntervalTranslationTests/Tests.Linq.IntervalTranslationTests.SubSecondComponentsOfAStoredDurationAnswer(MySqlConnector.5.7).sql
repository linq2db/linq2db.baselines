-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 1
DECLARE @InTicks Int64
SET     @InTicks = 12345670
DECLARE @Undeclared Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 1

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
	CAST((`r`.`InTicks` DIV 10000) % 1000 AS SIGNED),
	CAST((`r`.`InTicks` DIV 10) % 1000 AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

