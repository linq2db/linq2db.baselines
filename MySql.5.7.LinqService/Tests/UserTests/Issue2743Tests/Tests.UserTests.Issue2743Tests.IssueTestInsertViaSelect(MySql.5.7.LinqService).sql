BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `MessageEventDTO`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `MessageEventDTO`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTO` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `MessageEventDTOTb2`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTOTb2` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `MessageEventDTOTb2`
(
	`Id`
)
SELECT
	`x`.`Id`
FROM
	`MessageEventDTO` `x`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `MessageEventDTO`

