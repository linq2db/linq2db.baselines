-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Datetime -- DateTime
SET     @Value = '2026-06-01 10:00:00'
DECLARE @Day Datetime -- DateTime
SET     @Day = '2026-06-01'
DECLARE @Wide Datetime -- DateTime
SET     @Wide = '2026-06-01 10:00:00'

INSERT INTO `CoarseDateShapesRow`
(
	`Id`,
	`Value`,
	`Day`,
	`Wide`
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDateShapesRow` `r`
WHERE
	CAST(`r`.`Value` AS DATE) = '2026-06-01'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDateShapesRow` `r`
WHERE
	CAST(`r`.`Value` AS DATE) < '2026-06-01'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDateShapesRow` `r`
WHERE
	'2026-06-01' = CAST(`r`.`Value` AS DATE)

