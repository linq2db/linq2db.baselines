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
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id`
			UNION ALL
			SELECT 4) `r` ON `t`.`Id` = `r`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableToInsert`

