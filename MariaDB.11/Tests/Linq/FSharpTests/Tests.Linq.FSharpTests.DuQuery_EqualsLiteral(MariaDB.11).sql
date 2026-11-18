-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO `DuRow`
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
SET     @Key = 20

INSERT INTO `DuRow`
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
DECLARE @Key Int32
SET     @Key = 10

SELECT
	`x`.`Id`,
	`x`.`Key`
FROM
	`DuRow` `x`
WHERE
	`x`.`Key` = @Key

