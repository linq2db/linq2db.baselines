-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 183845
DECLARE @InTicks Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 183845

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
	CAST((CAST(`r`.`InSeconds` AS SIGNED) * 10000000) DIV 864000000000 AS SIGNED),
	CAST(((CAST(`r`.`InSeconds` AS SIGNED) * 10000000) DIV 36000000000) % 24 AS SIGNED),
	CAST(((CAST(`r`.`InSeconds` AS SIGNED) * 10000000) DIV 600000000) % 60 AS SIGNED),
	CAST(((CAST(`r`.`InSeconds` AS SIGNED) * 10000000) DIV 10000000) % 60 AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

