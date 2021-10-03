BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `SelectExpressionTable`
(
	`ID`
)
VALUES
(1)

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`SelectExpressionTable` `_`
LIMIT @take

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `SelectExpressionTable`

