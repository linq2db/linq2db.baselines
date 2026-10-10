-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 3000000005

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Seconds Int32
SET     @Seconds = 5

SELECT
	`r`.`Id`
FROM
	`DurationRow` `r`
WHERE
	CAST(`r`.`InSeconds` % 60 AS SIGNED) = @Seconds

