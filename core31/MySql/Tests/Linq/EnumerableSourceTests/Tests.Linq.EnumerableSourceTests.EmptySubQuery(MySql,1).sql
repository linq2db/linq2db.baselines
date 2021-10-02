BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

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
			(SELECT NULL`Id`, NULL`Value` FROM DUAL WHERE 1 = 0) `t1`
		WHERE
			`t`.`Id` = `t1`.`Id` AND (`t`.`Value` = `t1`.`Value` OR `t`.`Value` IS NULL AND `t1`.`Value` IS NULL)
	)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

