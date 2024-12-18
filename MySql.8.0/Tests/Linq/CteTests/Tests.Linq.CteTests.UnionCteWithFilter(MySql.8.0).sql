BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Books`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Books`
(
	`Id`       INT           NOT NULL,
	`Title`    VARCHAR(4000) NOT NULL,
	`AuthorId` INT           NOT NULL,

	CONSTRAINT `PK_Books` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Books`
(
	`Id`,
	`Title`,
	`AuthorId`
)
VALUES
(1,'Something',1),
(2,'Book',2),
(3,'Boring',3)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Authors`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Authors` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Authors`
(
	`Id`,
	`Name`
)
VALUES
(1,'John'),
(2,'Steven'),
(3,'Smith')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Books`

