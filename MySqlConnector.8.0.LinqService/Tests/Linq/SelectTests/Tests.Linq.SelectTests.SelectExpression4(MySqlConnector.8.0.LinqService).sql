﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SelectExpressionTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `SelectExpressionTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_SelectExpressionTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SelectExpressionTable`

