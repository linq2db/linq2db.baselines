-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Elapsed Int64
SET     @Elapsed = 5400

INSERT INTO `DynamicDurationRow`
(
	`Id`,
	`Elapsed`
)
VALUES
(
	@Id,
	@Elapsed
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Elapsed`
FROM
	`DynamicDurationRow` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`r`.`Elapsed` AS DOUBLE) / 60
FROM
	`DynamicDurationRow` `r`
LIMIT 2

