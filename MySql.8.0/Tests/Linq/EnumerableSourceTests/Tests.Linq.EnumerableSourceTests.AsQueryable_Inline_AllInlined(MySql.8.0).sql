-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 0 AS `Id`, 'Data 0' AS `Data`
		UNION ALL
		SELECT 1, 'Data 1') `t1`

