BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4364_BaseThing`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4364_BaseThing`
(
	`Id`                INT NOT NULL,
	`Type`              INT NOT NULL,
	`BaseField`         INT NOT NULL,
	`ConcreteField`     INT     NULL,
	`IntermediateField` INT     NULL,

	CONSTRAINT `PK_Issue4364_BaseThing` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue4364_BaseThing`
(
	`Id`,
	`Type`,
	`BaseField`,
	`ConcreteField`,
	`IntermediateField`
)
VALUES
(1,1,2,0,0),
(2,2,3,4,0),
(3,101,4,0,6),
(4,102,5,0,0)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4364_Person`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4364_Person`
(
	`Id`       INT           NOT NULL,
	`FullName` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue4364_Person` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue4364_Person`
(
	`Id`,
	`FullName`
)
VALUES
(1,'Person 1'),
(2,'Person 2'),
(3,'Person 3'),
(4,'Person 4'),
(5,'Person 5')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4364_Interaction`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4364_Interaction`
(
	`Id`       INT NOT NULL,
	`PersonId` INT NOT NULL,
	`ThingId`  INT NOT NULL,

	CONSTRAINT `PK_Issue4364_Interaction` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue4364_Interaction`
(
	`Id`,
	`PersonId`,
	`ThingId`
)
VALUES
(1,2,3),
(2,3,4),
(3,4,1),
(4,1,2)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`b`.`Type`,
	`p`.`FullName`
FROM
	`Issue4364_BaseThing` `b`
		INNER JOIN `Issue4364_Interaction` `i` ON `b`.`Id` = `i`.`ThingId`
		INNER JOIN `Issue4364_Person` `p` ON `i`.`PersonId` = `p`.`Id`
ORDER BY
	`b`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4364_Interaction`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4364_Person`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4364_BaseThing`

