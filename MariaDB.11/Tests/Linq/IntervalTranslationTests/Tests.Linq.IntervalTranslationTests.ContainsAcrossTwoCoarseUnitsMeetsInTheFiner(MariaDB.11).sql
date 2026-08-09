-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InDays Int64
SET     @InDays = 2
DECLARE @InMilliseconds Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds Int64
SET     @InNanoseconds = 172800000000000

INSERT INTO `UnitSpreadRow`
(
	`Id`,
	`InDays`,
	`InMilliseconds`,
	`InNanoseconds`
)
VALUES
(
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`UnitSpreadRow` `r`
WHERE
	`r`.`InDays` * 86400000 IN (
		SELECT
			`x`.`InMilliseconds`
		FROM
			`UnitSpreadRow` `x`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`UnitSpreadRow` `r`
WHERE
	`r`.`InMilliseconds` IN (
		SELECT
			`x`.`InDays` * 86400000
		FROM
			`UnitSpreadRow` `x`
	)

