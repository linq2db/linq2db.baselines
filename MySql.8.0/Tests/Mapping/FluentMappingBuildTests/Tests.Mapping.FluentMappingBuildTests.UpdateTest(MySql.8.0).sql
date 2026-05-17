-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `FluentTemp_Update`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_Update` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp_Update`
(
	`ID`,
	`Value`,
	`LastName`
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Name VarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	`FluentTemp_Update` `t`
SET
	`t`.`Value` = @Name,
	`t`.`LastName` = @LastName
WHERE
	`t`.`ID` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `FluentTemp_Update`

