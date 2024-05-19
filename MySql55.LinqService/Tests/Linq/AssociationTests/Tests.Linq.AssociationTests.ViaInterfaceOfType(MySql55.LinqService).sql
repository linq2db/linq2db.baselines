BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `MainEntity`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `MainEntity`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MainEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SubEntity`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SubEntity`
(
	`Id`           INT NOT NULL,
	`MainEntityId` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	(
		SELECT
			Count(*)
		FROM
			`SubEntity` `t1`
		WHERE
			`x`.`Id` = `t1`.`MainEntityId`
	)
FROM
	`MainEntity` `x`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SubEntity`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `MainEntity`

