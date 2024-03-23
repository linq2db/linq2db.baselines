BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `SelectExpressionTable`
(
	`ID`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN 1 = 1 THEN 1
		ELSE 0
	END
FROM
	`SelectExpressionTable` `_`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

