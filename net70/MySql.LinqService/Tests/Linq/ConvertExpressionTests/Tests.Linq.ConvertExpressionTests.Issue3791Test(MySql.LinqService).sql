BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3791Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3791Table`
(
	`Id`      INT           AUTO_INCREMENT NOT NULL,
	`OtherId` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue3791Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3791GuidTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3791GuidTable`
(
	`Id` CHAR(36) NOT NULL,

	CONSTRAINT `PK_Issue3791GuidTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`OtherId`,
	`a_Association`.`Id`
FROM
	`Issue3791Table` `t1`
		LEFT JOIN `Issue3791GuidTable` `a_Association` ON `t1`.`OtherId` = Cast(`a_Association`.`Id` as CHAR(255))

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3791GuidTable`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3791Table`

