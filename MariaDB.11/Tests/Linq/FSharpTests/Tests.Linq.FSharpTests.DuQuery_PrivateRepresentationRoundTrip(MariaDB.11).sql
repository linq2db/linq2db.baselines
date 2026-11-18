-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 7

INSERT INTO `PrivateDuRow`
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
	`PrivateDuRow` `x`
ORDER BY
	`x`.`Id`

