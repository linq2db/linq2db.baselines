﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Author`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Author`
(
	`AuthorId`   INT           NOT NULL,
	`AuthorName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Author` PRIMARY KEY CLUSTERED (`AuthorId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Book`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `BookAuthor`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BookAuthor`
(
	`FkBookId`   INT NOT NULL,
	`FkAuthorId` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`Id`,
	`a_Author`.`AuthorId`,
	`a_Author`.`AuthorName`
FROM
	(
		SELECT DISTINCT
			`t3`.`Id`
		FROM
			(
				SELECT
					CAST(0 AS SIGNED) as `projection__set_id__`,
					`a_Book`.`BookId` as `Id`
				FROM
					`Author` `t1`
						INNER JOIN `BookAuthor` `b` ON `b`.`FkAuthorId` = `t1`.`AuthorId`
						LEFT JOIN `Book` `a_Book` ON `b`.`FkBookId` = `a_Book`.`BookId`
				WHERE
					`a_Book`.`Discriminator` = 'Roman'
				UNION ALL
				SELECT
					CAST(1 AS SIGNED) as `projection__set_id__`,
					NULL as `Id`
				FROM
					`Author` `t2`
						INNER JOIN `BookAuthor` `b_1` ON `b_1`.`FkAuthorId` = `t2`.`AuthorId`
						LEFT JOIN `Book` `a_Book_1` ON `b_1`.`FkBookId` = `a_Book_1`.`BookId`
				WHERE
					`a_Book_1`.`Discriminator` = 'Novel'
			) `t3`
		WHERE
			`t3`.`projection__set_id__` = 0
	) `m_1`
		INNER JOIN `BookAuthor` `d` ON `d`.`FkBookId` = `m_1`.`Id`
		LEFT JOIN `Author` `a_Author` ON `d`.`FkAuthorId` = `a_Author`.`AuthorId`
WHERE
	`a_Author`.`AuthorName` <> 'A' OR `a_Author`.`AuthorName` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`c1`,
	`a_Author`.`AuthorId`,
	`a_Author`.`AuthorName`
FROM
	(
		SELECT DISTINCT
			`t3`.`c1`
		FROM
			(
				SELECT
					CAST(0 AS SIGNED) as `projection__set_id__`,
					NULL as `c1`
				FROM
					`Author` `t1`
						INNER JOIN `BookAuthor` `b` ON `b`.`FkAuthorId` = `t1`.`AuthorId`
						LEFT JOIN `Book` `a_Book` ON `b`.`FkBookId` = `a_Book`.`BookId`
				WHERE
					`a_Book`.`Discriminator` = 'Roman'
				UNION ALL
				SELECT
					CAST(1 AS SIGNED) as `projection__set_id__`,
					`a_Book_1`.`BookId` as `c1`
				FROM
					`Author` `t2`
						INNER JOIN `BookAuthor` `b_1` ON `b_1`.`FkAuthorId` = `t2`.`AuthorId`
						LEFT JOIN `Book` `a_Book_1` ON `b_1`.`FkBookId` = `a_Book_1`.`BookId`
				WHERE
					`a_Book_1`.`Discriminator` = 'Novel'
			) `t3`
		WHERE
			`t3`.`projection__set_id__` = 1
	) `m_1`
		INNER JOIN `BookAuthor` `d` ON `d`.`FkBookId` = `m_1`.`c1`
		LEFT JOIN `Author` `a_Author` ON `d`.`FkAuthorId` = `a_Author`.`AuthorId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`a_Book`.`BookId`,
	`a_Book`.`BookName`,
	CAST(0 AS SIGNED),
	`a_Book`.`BookId`,
	NULL
FROM
	`Author` `t1`
		INNER JOIN `BookAuthor` `b` ON `b`.`FkAuthorId` = `t1`.`AuthorId`
		LEFT JOIN `Book` `a_Book` ON `b`.`FkBookId` = `a_Book`.`BookId`
WHERE
	`a_Book`.`Discriminator` = 'Roman'
UNION ALL
SELECT
	`a_Book_1`.`BookId`,
	`a_Book_1`.`BookName`,
	CAST(1 AS SIGNED),
	NULL,
	`a_Book_1`.`BookId`
FROM
	`Author` `t2`
		INNER JOIN `BookAuthor` `b_1` ON `b_1`.`FkAuthorId` = `t2`.`AuthorId`
		LEFT JOIN `Book` `a_Book_1` ON `b_1`.`FkBookId` = `a_Book_1`.`BookId`
WHERE
	`a_Book_1`.`Discriminator` = 'Novel'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`BookId`,
	`m_1`.`AuthorId`,
	`a_Author`.`AuthorId`,
	`a_Author`.`AuthorName`
FROM
	(
		SELECT DISTINCT
			`a_Book`.`BookId`,
			`t2`.`AuthorId`
		FROM
			(
				SELECT DISTINCT
					`t1`.`AuthorId`
				FROM
					`Author` `t1`
			) `t2`
				INNER JOIN `BookAuthor` `d` ON `d`.`FkAuthorId` = `t2`.`AuthorId`
				LEFT JOIN `Book` `a_Book` ON `d`.`FkBookId` = `a_Book`.`BookId`
	) `m_1`
		INNER JOIN `BookAuthor` `d_1` ON `d_1`.`FkBookId` = `m_1`.`BookId`
		LEFT JOIN `Author` `a_Author` ON `d_1`.`FkAuthorId` = `a_Author`.`AuthorId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`AuthorId`,
	`t1`.`AuthorName`
FROM
	`Author` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Author`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Book`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `BookAuthor`

