BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Entity1711`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Entity1711`
(
	`Id` BIGINT NOT NULL,

	CONSTRAINT `PK_Entity1711` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Relationship1711`
(
	`EntityId` BIGINT  NOT NULL,
	`Deleted`  BOOLEAN NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Id`
FROM
	`Entity1711` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Relationship1711` `r`
		WHERE
			`r`.`Deleted` = 0 AND `r`.`EntityId` = `t`.`Id`
	)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Entity1711`

