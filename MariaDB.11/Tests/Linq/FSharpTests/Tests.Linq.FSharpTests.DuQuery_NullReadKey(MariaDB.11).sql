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
DECLARE @Oid Int32
SET     @Oid = 1
DECLARE @RefId Int32
SET     @RefId = 1

INSERT INTO `DuOuter`
(
	`Oid`,
	`RefId`
)
VALUES
(
	@Oid,
	@RefId
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Oid Int32
SET     @Oid = 2
DECLARE @RefId Int32
SET     @RefId = 99

INSERT INTO `DuOuter`
(
	`Oid`,
	`RefId`
)
VALUES
(
	@Oid,
	@RefId
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`arg2`.`Key`
FROM
	`DuOuter` `tupledArg`
		LEFT JOIN `DuRow` `arg2` ON `tupledArg`.`RefId` = `arg2`.`Id`
ORDER BY
	`tupledArg`.`Oid`

