﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1316Tests`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1316Tests`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_Issue1316Tests` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO `Issue1316Tests`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`
FROM
	`Issue1316Tests` `_`
WHERE
	`_`.`ID` IN (4, 5, 6)
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1316Tests`

