-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Guid Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Sold Int32
SET     @Sold = 100

INSERT INTO `Campaign`
(
	`Guid`,
	`Sold`
)
VALUES
(
	@Guid,
	@Sold
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Guid Guid
SET     @Guid = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Sold Int32
SET     @Sold = 40

INSERT INTO `Campaign`
(
	`Guid`,
	`Sold`
)
VALUES
(
	@Guid,
	@Sold
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Guid Guid
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Sold Int32
SET     @Sold = 200

INSERT INTO `Campaign`
(
	`Guid`,
	`Sold`
)
VALUES
(
	@Guid,
	@Sold
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Guid`,
	`lc`.`Count`,
	CASE
		WHEN `lc`.`Count` IS NOT NULL THEN (CAST(`lc`.`Count` AS DECIMAL(29, 10)) / `r`.`Sold`) * 100
		ELSE NULL
	END
FROM
	`Campaign` `r`
		LEFT JOIN (
			SELECT 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AS `Key`, 5 AS `Count`
			UNION ALL
			SELECT 'a948600d-de21-4f74-8ac2-9516b287076e', 10) `lc` ON `r`.`Guid` = `lc`.`Key`

