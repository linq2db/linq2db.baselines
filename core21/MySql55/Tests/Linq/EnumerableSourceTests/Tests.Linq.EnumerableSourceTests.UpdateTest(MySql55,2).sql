﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- MySql55 MySql.Official MySql

UPDATE
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id`, 'Janet Updated' AS `Value` FROM DUAL
			UNION ALL
			SELECT 4, 'Doe Updated' FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`
SET
	`t`.`Value` = `r`.`Value`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

