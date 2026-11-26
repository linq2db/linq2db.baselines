Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Boolean), @p2='?' (Size = 4000), @p3='?' (DbType = Int32), @p4='?' (DbType = Boolean), @p5='?' (Size = 4000)

SET AUTOCOMMIT = 1;
INSERT INTO `Items` (`Id`, `IsDeleted`, `Name`)
VALUES (@p0, @p1, @p2),
(@p3, @p4, @p5);


-- MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`Id`,
	`p`.`Name`
FROM
	`Items` `p`
WHERE
	NOT `p`.`IsDeleted` AND LOCATE('Test', `p`.`Name`) > 0
ORDER BY
	`p`.`Name`



SELECT `i`.`Id`, `i`.`IsDeleted`, `i`.`Name`
FROM `Items` AS `i`
WHERE NOT (`i`.`IsDeleted`) AND (`i`.`Name` LIKE 'Test%')


