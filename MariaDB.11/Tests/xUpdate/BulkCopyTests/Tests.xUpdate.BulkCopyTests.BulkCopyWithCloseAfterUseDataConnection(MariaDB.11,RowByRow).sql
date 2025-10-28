BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

