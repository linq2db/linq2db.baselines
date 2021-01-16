BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Fact`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Tag`
(
	`Id`     INT          NOT NULL,
	`FactId` INT          NOT NULL,
	`Name`   VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Tag`
(
	`Id`,
	`FactId`,
	`Name`
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Fact`

