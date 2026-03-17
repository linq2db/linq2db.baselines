-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`,
	`t`.`Value`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FluentTemp`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`,
	`t`.`Value`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FluentTemp`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Column`   VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp`
(
	`ID`,
	`Column`,
	`LastName`
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`,
	`t`.`Column`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FluentTemp`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Column`   VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp`
(
	`ID`,
	`Column`,
	`LastName`
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`,
	`t`.`Column`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FluentTemp`

