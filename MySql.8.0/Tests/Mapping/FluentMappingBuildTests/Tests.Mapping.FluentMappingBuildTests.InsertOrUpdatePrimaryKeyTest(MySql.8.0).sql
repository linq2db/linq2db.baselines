-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `FluentTemp_InsertOrUpdate`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `FluentTemp_InsertOrUpdate`
(
	`ID`   INT         NOT NULL,
	`Name` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_InsertOrUpdate` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `FluentTemp_InsertOrUpdate`

