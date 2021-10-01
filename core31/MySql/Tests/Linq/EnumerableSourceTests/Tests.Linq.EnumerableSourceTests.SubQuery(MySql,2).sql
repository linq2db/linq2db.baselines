BeforeExecute
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
(3,'Janet'),
(4,'Doe')

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
				SELECT 3 AS `Id`, 'Janet' AS `Value`
				UNION ALL
				SELECT 4, 'Doe') `t1`
		WHERE
			`t`.`Id` = `t1`.`Id` AND (`t`.`Value` = `t1`.`Value` OR `t`.`Value` IS NULL AND `t1`.`Value` IS NULL)
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

