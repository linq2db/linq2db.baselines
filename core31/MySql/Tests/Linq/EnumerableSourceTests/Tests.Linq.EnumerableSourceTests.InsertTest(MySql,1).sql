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
		SELECT 2 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 3, 'Doe') `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

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
		SELECT 2 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 3, 'Doe') `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

