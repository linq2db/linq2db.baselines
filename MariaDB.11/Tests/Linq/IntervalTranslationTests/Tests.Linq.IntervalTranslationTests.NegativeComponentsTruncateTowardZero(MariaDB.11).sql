-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = -90000
DECLARE @InTicks Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = -90000

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
	CAST(`r`.`InSeconds` DIV 86400 AS SIGNED),
	CAST((`r`.`InSeconds` DIV 3600) % 24 AS SIGNED),
	CAST(`r`.`InSeconds` AS DOUBLE) / 3600
FROM
	`DurationRow` `r`
LIMIT 2

