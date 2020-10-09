BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `SelectExpressionTable`
(
	`ID`
)
VALUES
(1)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE `SelectExpressionTable`

