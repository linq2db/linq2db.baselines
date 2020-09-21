BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `SelectExpressionTable`
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
DECLARE @p1 Guid
SET     @p1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p2 Guid
SET     @p2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take Int32
SET     @take = 1

SELECT
	@p1,
	@p2
FROM
	`SelectExpressionTable` `_`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `SelectExpressionTable`

