-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `FluentTemp_Cache`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_Cache` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp_Cache`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`Value`,
	`t`.`LastName`
FROM
	`FluentTemp_Cache` `t`
WHERE
	`t`.`ID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `FluentTemp_Cache`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `FluentTemp_Cache`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_Cache` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp_Cache`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`Value`,
	`t`.`LastName`
FROM
	`FluentTemp_Cache` `t`
WHERE
	`t`.`ID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `FluentTemp_Cache`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `FluentTemp_Cache`
(
	`ID`       INT         NOT NULL,
	`Column`   VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_Cache` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp_Cache`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`Column`,
	`t`.`LastName`
FROM
	`FluentTemp_Cache` `t`
WHERE
	`t`.`ID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `FluentTemp_Cache`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `FluentTemp_Cache`
(
	`ID`       INT         NOT NULL,
	`Column`   VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp_Cache` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO `FluentTemp_Cache`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`Column`,
	`t`.`LastName`
FROM
	`FluentTemp_Cache` `t`
WHERE
	`t`.`ID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `FluentTemp_Cache`

