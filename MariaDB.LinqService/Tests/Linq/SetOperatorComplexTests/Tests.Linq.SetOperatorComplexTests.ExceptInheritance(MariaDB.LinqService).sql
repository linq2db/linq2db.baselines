﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Author`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Author`
(
	`AuthorId`   INT           NOT NULL,
	`AuthorName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Author` PRIMARY KEY CLUSTERED (`AuthorId`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @AuthorId Int32
SET     @AuthorId = 1
DECLARE @AuthorName VarChar(12) -- String
SET     @AuthorName = 'Stephen King'

INSERT INTO `Author`
(
	`AuthorId`,
	`AuthorName`
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @AuthorId Int32
SET     @AuthorId = 2
DECLARE @AuthorName VarChar(14) -- String
SET     @AuthorName = 'Harry Harrison'

INSERT INTO `Author`
(
	`AuthorId`,
	`AuthorName`
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @AuthorId Int32
SET     @AuthorId = 3
DECLARE @AuthorName VarChar(20) -- String
SET     @AuthorName = 'Roger Joseph Zelazny'

INSERT INTO `Author`
(
	`AuthorId`,
	`AuthorName`
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Book`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Book`
(
	`BookId`        INT           NOT NULL,
	`Discriminator` VARCHAR(4000)     NULL,
	`BookName`      VARCHAR(4000)     NULL,
	`RomanScore`    INT               NULL,
	`NovelScore`    INT               NULL,

	CONSTRAINT `PK_Book` PRIMARY KEY CLUSTERED (`BookId`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 11
DECLARE @BookName VarChar(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 4

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`RomanScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 12
DECLARE @BookName VarChar(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Int32
SET     @NovelScore = 0

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`NovelScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 13
DECLARE @BookName VarChar(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 3

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`RomanScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 21
DECLARE @BookName VarChar(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 1

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`RomanScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 22
DECLARE @BookName VarChar(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Int32
SET     @NovelScore = 0

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`NovelScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 23
DECLARE @BookName VarChar(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 0

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`RomanScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 31
DECLARE @BookName VarChar(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 5

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`RomanScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 32
DECLARE @BookName VarChar(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Int32
SET     @NovelScore = 0

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`NovelScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BookId Int32
SET     @BookId = 33
DECLARE @BookName VarChar(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 7

INSERT INTO `Book`
(
	`BookId`,
	`BookName`,
	`Discriminator`,
	`RomanScore`
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `BookAuthor`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BookAuthor`
(
	`FkBookId`   INT NOT NULL,
	`FkAuthorId` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 11
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 1

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 12
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 1

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 13
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 1

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 21
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 2

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 22
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 2

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 23
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 2

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 31
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 3

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 32
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 3

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FkBookId Int32
SET     @FkBookId = 33
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 3

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT DISTINCT
	`t1`.`BookId`,
	`t1`.`BookId`,
	`t1`.`Discriminator`,
	`t1`.`BookName`,
	`t1`.`RomanScore`,
	`t1`.`NovelScore`,
	`t1`.`BookId`,
	`t1`.`Discriminator`,
	`t1`.`BookName`,
	`t1`.`NovelScore`,
	`t1`.`RomanScore`
FROM
	(
		SELECT
			`a_Book`.`BookId`,
			`a_Book`.`Discriminator`,
			`a_Book`.`BookName`,
			`a_Book`.`RomanScore`,
			`a_Book`.`NovelScore`
		FROM
			`Author` `a`
				INNER JOIN `BookAuthor` `b` ON `b`.`FkAuthorId` = `a`.`AuthorId`
				LEFT JOIN `Book` `a_Book` ON `b`.`FkBookId` = `a_Book`.`BookId`
		WHERE
			`a_Book`.`Discriminator` = 'Roman'
	) `t1`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`Author` `t2`
				INNER JOIN `BookAuthor` `b_1` ON `b_1`.`FkAuthorId` = `t2`.`AuthorId`
				LEFT JOIN `Book` `a_Book_1` ON `b_1`.`FkBookId` = `a_Book_1`.`BookId`
		WHERE
			`a_Book_1`.`Discriminator` = 'Novel' AND
			(`t1`.`BookId` = `a_Book_1`.`BookId` OR `t1`.`BookId` IS NULL AND `a_Book_1`.`BookId` IS NULL) AND
			`t1`.`BookId` = `a_Book_1`.`BookId` AND
			(`t1`.`Discriminator` = `a_Book_1`.`Discriminator` OR `t1`.`Discriminator` IS NULL AND `a_Book_1`.`Discriminator` IS NULL) AND
			(`t1`.`BookName` = `a_Book_1`.`BookName` OR `t1`.`BookName` IS NULL AND `a_Book_1`.`BookName` IS NULL) AND
			(`t1`.`RomanScore` = `a_Book_1`.`RomanScore` OR `t1`.`RomanScore` IS NULL AND `a_Book_1`.`RomanScore` IS NULL) AND
			(`t1`.`NovelScore` = `a_Book_1`.`NovelScore` OR `t1`.`NovelScore` IS NULL AND `a_Book_1`.`NovelScore` IS NULL)
	)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`AuthorId`,
	`a_Book`.`BookId`,
	`a_Book`.`Discriminator`,
	`a_Book`.`BookName`,
	`a_Book`.`NovelScore`,
	`a_Book`.`RomanScore`
FROM
	`Author` `m_1`
		INNER JOIN `BookAuthor` `d` ON `d`.`FkAuthorId` = `m_1`.`AuthorId`
		LEFT JOIN `Book` `a_Book` ON `d`.`FkBookId` = `a_Book`.`BookId`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`AuthorId`,
	`t1`.`AuthorName`
FROM
	`Author` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Author`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Book`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `BookAuthor`

