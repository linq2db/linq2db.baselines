-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(`r`.`InSeconds` DIV 86400 AS SIGNED),
	CAST((`r`.`InSeconds` DIV 3600) % 24 AS SIGNED),
	CAST((`r`.`InSeconds` DIV 60) % 60 AS SIGNED),
	CAST(`r`.`InSeconds` % 60 AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

