BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Task`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Task`
(
	`AdminPartyId` INT           NOT NULL,
	`Description`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Party`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Party`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PartyAccess`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PartyAccess`
(
	`PartyId` INT           NOT NULL,
	`Role`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`task_1`.`Description`,
	`party_1`.`Name`
FROM
	`Task` `task_1`
		LEFT JOIN `Party` `party_1` ON `task_1`.`AdminPartyId` = `party_1`.`Id` OR  EXISTS (
			SELECT
				*
			FROM
				`PartyAccess` `pa`
			WHERE
				`pa`.`PartyId` = `party_1`.`Id` AND `pa`.`Role` = 'Admin'
		)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PartyAccess`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Party`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Task`

