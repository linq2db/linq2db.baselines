-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

