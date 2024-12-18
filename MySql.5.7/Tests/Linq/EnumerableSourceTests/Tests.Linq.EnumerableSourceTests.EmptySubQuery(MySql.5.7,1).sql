BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
			(SELECT NULL `Id`, NULL `Value` WHERE 1 = 0) `r`
		WHERE
			`t`.`Id` = `r`.`Id` AND (`t`.`Value` = `r`.`Value` AND `t`.`Value` IS NOT NULL AND `r`.`Value` IS NOT NULL OR `t`.`Value` IS NULL AND `r`.`Value` IS NULL)
	)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TableToInsert`

