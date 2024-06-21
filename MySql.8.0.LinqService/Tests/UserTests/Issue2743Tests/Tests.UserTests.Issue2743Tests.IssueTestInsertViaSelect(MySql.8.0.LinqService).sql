BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MessageEventDTO`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `MessageEventDTO`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTO` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `MessageEventDTOTb2`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTOTb2` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `MessageEventDTOTb2`
(
	`Id`
)
SELECT
	`x`.`Id`
FROM
	`MessageEventDTO` `x`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MessageEventDTO`

