SELECT `t`.`Label`
FROM `Tags` AS `t`
WHERE EXISTS (
    SELECT 1
    FROM `MmArticleMmTag` AS `m`
    INNER JOIN `Articles` AS `a` ON `m`.`ArticlesId` = `a`.`Id`
    WHERE (`t`.`tag_id_col` = `m`.`TagsTagId`) AND (`a`.`Title` = 'Art2'))
ORDER BY `t`.`Label`


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Label`
FROM
	`Tags` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmArticleMmTag` `a`
				INNER JOIN `Articles` `o` ON `o`.`Id` = `a`.`ArticlesId`
		WHERE
			`t`.`tag_id_col` = `a`.`TagsTagId` AND `o`.`Title` = 'Art2'
	)
ORDER BY
	`t`.`Label`



