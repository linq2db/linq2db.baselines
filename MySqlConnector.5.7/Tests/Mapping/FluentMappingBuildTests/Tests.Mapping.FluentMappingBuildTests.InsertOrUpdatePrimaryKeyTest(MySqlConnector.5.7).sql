-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FluentTemp_InsertOrUpdate`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `FluentTemp_InsertOrUpdate`
(
	`ID`   INT         NOT NULL,
	`Name` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_InsertOrUpdate` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `FluentTemp_InsertOrUpdate`
(
	`ID`,
	`Name`
)
VALUES
(
	@ID,
	@Name
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `FluentTemp_InsertOrUpdate`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FluentTemp_InsertOrUpdate`

