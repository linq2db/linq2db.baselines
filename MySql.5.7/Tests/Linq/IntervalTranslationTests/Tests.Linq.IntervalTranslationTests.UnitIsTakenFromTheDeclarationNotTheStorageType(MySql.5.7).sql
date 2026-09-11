-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 10800
DECLARE @InTicks Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 10800

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
	CAST(`r`.`InSeconds` AS DECIMAL(29, 10)) / 3600,
	CAST(`r`.`InTicks` AS DECIMAL(29, 10)) / 36000000000
FROM
	`DurationRow` `r`
LIMIT 2

