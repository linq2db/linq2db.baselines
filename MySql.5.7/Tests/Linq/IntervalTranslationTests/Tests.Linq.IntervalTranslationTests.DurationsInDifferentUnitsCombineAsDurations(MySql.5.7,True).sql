-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`InSeconds` + `r`.`InSeconds`,
	`r`.`InTicks` + `r`.`InTicks`,
	CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED),
	CAST(`r`.`InSeconds` * 10000000 - `r`.`InTicks` AS SIGNED),
	CAST(`r`.`InTicks` - `r`.`InSeconds` * 10000000 AS SIGNED),
	CAST(CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED) + `r`.`InSeconds` * 10000000 AS SIGNED),
	CAST(CAST(-`r`.`InSeconds` AS SIGNED) * 10000000 + `r`.`InTicks` AS SIGNED),
	CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED),
	CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED) + `r`.`InTicks` + `r`.`InTicks`,
	CAST(CAST(`r`.`InSeconds` + `r`.`InSeconds` AS SIGNED) * 10000000 + `r`.`InTicks` AS SIGNED) - (`r`.`InTicks` + `r`.`InTicks`),
	CAST(CAST(-`r`.`InSeconds` AS SIGNED) * 10000000 - `r`.`InTicks` AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(`r`.`InSeconds` * 10000000 + `r`.`InTicks` AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

