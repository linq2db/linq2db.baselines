﻿BeforeExecute
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Authors`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Books`

