-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = NULL

INSERT INTO `CoarseNullableEventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 11:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-06-01 13:00:00'

INSERT INTO `CoarseNullableEventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseNullableEventRow` `r`
WHERE
	Coalesce(`r`.`FinishedOn`, `r`.`StartedOn`) < '2026-06-01 10:00:00.500'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseNullableEventRow` `r`
WHERE
	'2026-06-01 10:00:00.500' > Coalesce(`r`.`FinishedOn`, `r`.`StartedOn`)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseNullableEventRow` `r`
WHERE
	Coalesce(`r`.`FinishedOn`, `r`.`StartedOn`) = '2026-06-01 10:00:00.500'

