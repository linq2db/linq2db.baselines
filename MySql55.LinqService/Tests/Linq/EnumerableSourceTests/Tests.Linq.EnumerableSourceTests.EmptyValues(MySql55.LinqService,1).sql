BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`TableToInsert` `t`
		INNER JOIN (SELECT NULL `Id`, NULL `Value` FROM DUAL WHERE 1 = 0) `r` ON `t`.`Id` = `r`.`Id` AND (`t`.`Value` = `r`.`Value` OR `t`.`Value` IS NULL AND `r`.`Value` IS NULL)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

