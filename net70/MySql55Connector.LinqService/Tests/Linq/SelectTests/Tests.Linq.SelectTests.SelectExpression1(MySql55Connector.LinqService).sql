BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @p Guid
SET     @p = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_1 Guid
SET     @p_1 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take Int32
SET     @take = 1

SELECT
	@p,
	@p_1
FROM
	`SelectExpressionTable` `_`
LIMIT @take

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

