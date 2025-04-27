-- MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`x`.`Id`,
	`x`.`IsActive`,
	`x`.`ParentId`,
	`x`.`Name`
FROM
	`Children` `x`
WHERE
	LOCATE('Test', `x`.`Name`) > 0
ORDER BY
	`x`.`Name`



SELECT `c`.`Id`, `c`.`IsActive`, `c`.`Name`, `c`.`ParentId`
FROM `Children` AS `c`
WHERE `c`.`Name` IS NOT NULL AND (`c`.`Name` LIKE 'Test%')


