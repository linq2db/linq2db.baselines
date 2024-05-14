BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO `SelectExpressionTable`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`SelectExpressionTable` `t1`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

