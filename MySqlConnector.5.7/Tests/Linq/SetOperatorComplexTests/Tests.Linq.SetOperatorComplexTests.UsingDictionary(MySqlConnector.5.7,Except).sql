BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Author`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Author`
(
	`AuthorId`   INT           NOT NULL,
	`AuthorName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Author` PRIMARY KEY CLUSTERED (`AuthorId`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Author`
(
	`AuthorId`,
	`AuthorName`
)
VALUES
(1,'Stephen King'),
(2,'Harry Harrison'),
(3,'Roger Joseph Zelazny')

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Book`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Book`
(
	`BookId`,
	`Discriminator`,
	`BookName`,
	`RomanScore`,
	`NovelScore`
)
VALUES
(11,'Roman','Lisey''s Story[',4,0),
(12,'Novel','Duma Key',0,0),
(13,'Roman','Just After Sunset',3,0),
(21,'Roman','Deathworld',1,0),
(22,'Novel','The Stainless Steel Rat',0,0),
(23,'Roman','Planet of the Damned',0,0),
(31,'Roman','Blood of Amber',5,0),
(32,'Novel','Knight of Shadows',0,0),
(33,'Roman','The Chronicles of Amber',7,0)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `BookAuthor`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `BookAuthor`
(
	`FkBookId`   INT NOT NULL,
	`FkAuthorId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `BookAuthor`
(
	`FkBookId`,
	`FkAuthorId`
)
VALUES
(11,1),
(12,1),
(13,1),
(21,2),
(22,2),
(23,2),
(31,3),
(32,3),
(33,3)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	'Discriminator',
	`a_Book`.`Discriminator`,
	`a_Book`.`BookName`
FROM
	`Author` `t1`
		INNER JOIN `BookAuthor` `b` ON `b`.`FkAuthorId` = `t1`.`AuthorId`
		LEFT JOIN `Book` `a_Book` ON `b`.`FkBookId` = `a_Book`.`BookId`
WHERE
	`a_Book`.`Discriminator` = 'Roman' AND NOT EXISTS(
		SELECT
			*
		FROM
			`Author` `t2`
				INNER JOIN `BookAuthor` `b_1` ON `b_1`.`FkAuthorId` = `t2`.`AuthorId`
				LEFT JOIN `Book` `a_Book_1` ON `b_1`.`FkBookId` = `a_Book_1`.`BookId`
		WHERE
			`a_Book_1`.`Discriminator` = 'Novel' AND
			(`a_Book`.`Discriminator` = `a_Book_1`.`Discriminator` OR `a_Book`.`Discriminator` IS NULL AND `a_Book_1`.`Discriminator` IS NULL) AND
			(`a_Book`.`BookName` = `a_Book_1`.`BookName` OR `a_Book`.`BookName` IS NULL AND `a_Book_1`.`BookName` IS NULL) AND
			(`a_Book`.`BookName` = `a_Book_1`.`BookName` OR `a_Book`.`BookName` IS NULL AND `a_Book_1`.`BookName` IS NULL)
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`AuthorId`,
	`a_Book`.`BookId`,
	CASE
		WHEN `a_Book`.`Discriminator` = 'Novel' THEN 1
		ELSE 0
	END,
	`a_Book`.`BookName`,
	`a_Book`.`NovelScore`,
	CASE
		WHEN `a_Book`.`Discriminator` = 'Roman' THEN 1
		ELSE 0
	END,
	`a_Book`.`RomanScore`,
	`a_Book`.`Discriminator`
FROM
	`Author` `m_1`
		INNER JOIN `BookAuthor` `d` ON `d`.`FkAuthorId` = `m_1`.`AuthorId`
		LEFT JOIN `Book` `a_Book` ON `d`.`FkBookId` = `a_Book`.`BookId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`AuthorId`,
	`t1`.`AuthorName`
FROM
	`Author` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Author`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Book`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `BookAuthor`

