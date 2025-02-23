BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `FluentTemp`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`   INT         NOT NULL,
	`Name` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `FluentTemp`
(
	`ID`,
	`Name`
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `FluentTemp`
(
	`ID`,
	`Name`
)
VALUES
(
	1,
	'John II'
)
ON DUPLICATE KEY UPDATE
	`ID` = `ID`,
	`Name` = `Name`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `FluentTemp`

