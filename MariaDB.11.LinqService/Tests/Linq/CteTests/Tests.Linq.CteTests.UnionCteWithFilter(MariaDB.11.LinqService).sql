BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Books`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Books`
(
	`Id`       INT           NOT NULL,
	`Title`    VARCHAR(4000) NOT NULL,
	`AuthorId` INT           NOT NULL,

	CONSTRAINT `PK_Books` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Title VarChar(9) -- String
SET     @Title = 'Something'
DECLARE @AuthorId Int32
SET     @AuthorId = 1

INSERT INTO `Books`
(
	`Id`,
	`Title`,
	`AuthorId`
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Title VarChar(4) -- String
SET     @Title = 'Book'
DECLARE @AuthorId Int32
SET     @AuthorId = 2

INSERT INTO `Books`
(
	`Id`,
	`Title`,
	`AuthorId`
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Title VarChar(6) -- String
SET     @Title = 'Boring'
DECLARE @AuthorId Int32
SET     @AuthorId = 3

INSERT INTO `Books`
(
	`Id`,
	`Title`,
	`AuthorId`
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Authors`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Authors` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `Authors`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Steven'

INSERT INTO `Authors`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO `Authors`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `BooksCte` (`Book_Id`, `Book_Title`, `Author_Name`)
AS
(
	SELECT
		`b`.`Id`,
		`b`.`Title`,
		`a_Author`.`Name`
	FROM
		`Books` `b`
			INNER JOIN `Authors` `a_Author` ON `b`.`AuthorId` = `a_Author`.`Id`
)
SELECT
	`b_1`.`Id`
FROM
	(
		SELECT
			NULL as `Name`,
			`r`.`Book_Title` as `Title`,
			`r`.`Book_Id` as `Id`
		FROM
			`BooksCte` `r`
		UNION ALL
		SELECT
			`t1`.`Author_Name` as `Name`,
			NULL as `Title`,
			NULL as `Id`
		FROM
			`BooksCte` `t1`
	) `b_1`
WHERE
	`b_1`.`Name` = 'Steven' AND `b_1`.`Name` IS NOT NULL OR
	`b_1`.`Title` = 'Something' AND `b_1`.`Title` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Books`

