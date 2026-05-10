-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 20 AS `Id`, 'Data 20' AS `Data`
		UNION ALL
		SELECT 21, 'Data 21'
		UNION ALL
		SELECT 22, 'Data 22') `t1`

