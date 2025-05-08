BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	(
		SELECT 3 AS `Id`, 3 AS `Id0`, 'Janet' AS `Value`
		UNION ALL
		SELECT 4, 4, 'Doe') `t1`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `t1`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	(
		SELECT 3 AS `Id`, 3 AS `Id0`, 'Janet' AS `Value`
		UNION ALL
		SELECT 4, 4, 'Doe') `t1`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `t1`.`Id`
WHERE
	`t`.`Id` IS NULL

