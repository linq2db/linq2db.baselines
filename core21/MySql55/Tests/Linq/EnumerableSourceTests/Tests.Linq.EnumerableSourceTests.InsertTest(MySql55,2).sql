BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TableToInsert`
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
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	(
		SELECT 3 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 4, 'Doe') `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	(
		SELECT 3 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 4, 'Doe') `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

