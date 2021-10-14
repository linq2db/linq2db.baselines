﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`TableToInsert` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 2 AS `Id`, 'Janet' AS `Value` FROM DUAL
				UNION ALL
				SELECT 3, 'Doe' FROM DUAL) `r`
		WHERE
			`t`.`Id` = `r`.`Id` AND (`t`.`Value` = `r`.`Value` OR `t`.`Value` IS NULL AND `r`.`Value` IS NULL)
	)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

