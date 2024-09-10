BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DynamicParent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `DynamicParent`
(
	`ID` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_DynamicParent` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DynamicChild`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `DynamicChild`
(
	`ID`       INT AUTO_INCREMENT NOT NULL,
	`ParentID` INT                NOT NULL,

	CONSTRAINT `PK_DynamicChild` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DynamicChild`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DynamicParent`

