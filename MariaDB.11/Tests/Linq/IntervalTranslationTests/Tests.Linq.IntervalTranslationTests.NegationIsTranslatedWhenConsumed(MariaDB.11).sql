-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(CAST(-`r`.`InSeconds` AS SIGNED) * 10000000 AS DOUBLE) / 36000000000,
	CAST(((CAST(-`r`.`InSeconds` AS SIGNED) * 10000000) DIV 36000000000) % 24 AS SIGNED)
FROM
	`DurationRow` `r`
LIMIT 2

