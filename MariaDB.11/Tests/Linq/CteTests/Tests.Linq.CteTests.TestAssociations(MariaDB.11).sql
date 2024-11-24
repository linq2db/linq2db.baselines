BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Books`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Books`
(
	`Id`       INT           AUTO_INCREMENT NOT NULL,
	`Title`    VARCHAR(4000)                NOT NULL,
	`AuthorId` INT                          NOT NULL,

	CONSTRAINT `PK_Books` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Authors`
(
	`Id`   INT           AUTO_INCREMENT NOT NULL,
	`Name` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_Authors` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `BooksCte` (`AuthorId`, `Title`)
AS
(
	SELECT
		`t1`.`AuthorId`,
		`t1`.`Title`
	FROM
		`Books` `t1`
)
SELECT
	`b`.`Title`
FROM
	`BooksCte` `b`
		INNER JOIN `Authors` `a_Author` ON `b`.`AuthorId` = `a_Author`.`Id`
WHERE
	`a_Author`.`Name` = 'Steven'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Books`

