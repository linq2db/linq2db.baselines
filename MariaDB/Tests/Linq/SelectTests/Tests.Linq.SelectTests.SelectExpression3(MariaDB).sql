BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `SelectExpressionTable`
(
	`ID`
)
VALUES
(1)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`SelectExpressionTable` `_`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

