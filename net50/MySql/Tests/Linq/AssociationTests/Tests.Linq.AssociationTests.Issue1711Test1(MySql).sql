﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Entity1711`
(
	`Id` BIGINT NOT NULL,

	CONSTRAINT `PK_Entity1711` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Relationship1711`
(
	`EntityId` BIGINT  NOT NULL,
	`Deleted`  BOOLEAN NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Id`
FROM
	`Entity1711` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Relationship1711` `t1`
		WHERE
			`t`.`Id` = `t1`.`EntityId`
	)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Entity1711`

