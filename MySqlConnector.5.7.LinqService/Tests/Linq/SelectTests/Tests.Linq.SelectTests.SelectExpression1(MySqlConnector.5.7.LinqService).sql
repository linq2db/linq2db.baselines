BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`SelectExpressionTable` `t1`
LIMIT @take

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SelectExpressionTable`

