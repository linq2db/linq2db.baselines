BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `SelectExpressionTable`
(
	`ID`
)
VALUES
(1)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 Guid
SET     @p_1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_2 Guid
SET     @p_2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take Int32
SET     @take = 1

SELECT
	@p_1,
	@p_2
FROM
	`SelectExpressionTable` `_`
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

