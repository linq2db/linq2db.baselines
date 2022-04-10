BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

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
		SELECT 3 AS `Id`, 'Janet' AS `Value` FROM DUAL
		UNION ALL
		SELECT 4, 'Doe' FROM DUAL) `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySqlConnector MySql

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
		SELECT 3 AS `Id`, 'Janet' AS `Value` FROM DUAL
		UNION ALL
		SELECT 4, 'Doe' FROM DUAL) `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

