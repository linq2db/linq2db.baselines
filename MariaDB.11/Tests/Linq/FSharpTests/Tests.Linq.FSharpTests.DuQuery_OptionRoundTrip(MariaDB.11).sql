-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO `DuOptRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = NULL

INSERT INTO `DuOptRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`Key`
FROM
	`DuOptRow` `x`
ORDER BY
	`x`.`Id`

