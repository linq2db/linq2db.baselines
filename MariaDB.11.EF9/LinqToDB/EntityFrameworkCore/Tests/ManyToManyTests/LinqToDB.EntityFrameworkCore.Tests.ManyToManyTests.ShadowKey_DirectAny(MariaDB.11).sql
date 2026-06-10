SELECT `a`.`Id`
FROM `Articles` AS `a`
WHERE EXISTS (
    SELECT 1
    FROM `MmArticleMmTag` AS `m`
    INNER JOIN `Tags` AS `t` ON `m`.`TagsTagId` = `t`.`tag_id_col`
    WHERE (`a`.`Id` = `m`.`ArticlesId`) AND (`t`.`Label` = 'news'))
ORDER BY `a`.`Id`


-- MariaDB.10.MySqlConnector MariaDB

SELECT
	`a`.`Id`
FROM
	`Articles` `a`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmArticleMmTag` `t`
				INNER JOIN `Tags` `o` ON `o`.`tag_id_col` = `t`.`TagsTagId`
		WHERE
			`a`.`Id` = `t`.`ArticlesId` AND `o`.`Label` = 'news'
	)
ORDER BY
	`a`.`Id`



