BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Authors`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Authors` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Books`
(
	`Id`       INT          NOT NULL,
	`AuthorId` INT          NOT NULL,
	`Title`    VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Books` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Books`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Authors`

