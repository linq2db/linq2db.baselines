BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Authors`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Authors` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Books`
(
	`Id`       INT          NOT NULL,
	`AuthorId` INT          NOT NULL,
	`Title`    VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Books` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`Authors` `author`
		INNER JOIN `Books` `book` ON `book`.`AuthorId` = `author`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Books`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Authors`

