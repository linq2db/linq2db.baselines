BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`ID`,
	`t`.`Value`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `FluentTemp`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Value`    VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`ID`,
	`t`.`Value`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `FluentTemp`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Column`   VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`ID`,
	`t`.`Column`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `FluentTemp`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`       INT         NOT NULL,
	`Column`   VARCHAR(20)     NULL,
	`LastName` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`ID`,
	`t`.`Column`,
	`t`.`LastName`
FROM
	`FluentTemp` `t`
WHERE
	`t`.`ID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `FluentTemp`

