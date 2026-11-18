-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(`r`.`InSeconds` AS DOUBLE) / 3600,
	CAST(`r`.`InSeconds` AS DOUBLE) / 60,
	CAST(`r`.`InTicks` AS DOUBLE) / 36000000000
FROM
	`DurationRow` `r`
LIMIT 2

