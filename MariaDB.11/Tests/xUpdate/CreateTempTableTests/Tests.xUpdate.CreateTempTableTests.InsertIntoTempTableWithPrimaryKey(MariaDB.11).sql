-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `TableWithPrimaryKey2`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey2` PRIMARY KEY CLUSTERED (`Key`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TableWithPrimaryKey2`
(
	`Key`
)
VALUES
(1)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `TableWithPrimaryKey2`

