BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 2 AS `Id`, 'Janet Updated' AS `Value`
			UNION ALL
			SELECT 3, 'Doe Updated') `r` ON `t`.`Id` = `r`.`Id`
SET
	`t`.`Value` = `r`.`Value`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableToInsert`

