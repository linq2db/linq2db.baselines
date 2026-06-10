SELECT `a`.`Id`, `a`.`Title`, `t0`.`ArticlesId`, `t0`.`TagsTagId`, `t0`.`tag_id_col`, `t0`.`Label`
FROM `Articles` AS `a`
LEFT JOIN (
    SELECT `m`.`ArticlesId`, `m`.`TagsTagId`, `t`.`tag_id_col`, `t`.`Label`
    FROM `MmArticleMmTag` AS `m`
    INNER JOIN `Tags` AS `t` ON `m`.`TagsTagId` = `t`.`tag_id_col`
) AS `t0` ON `a`.`Id` = `t0`.`ArticlesId`
ORDER BY `a`.`Id`, `t0`.`ArticlesId`, `t0`.`TagsTagId`




-- MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Id`,
	`o`.`Label`
FROM
	`Articles` `m_1`
		INNER JOIN `MmArticleMmTag` `d` ON `m_1`.`Id` = `d`.`ArticlesId`
		INNER JOIN `Tags` `o` ON `o`.`tag_id_col` = `d`.`TagsTagId`
ORDER BY
	`m_1`.`Id`





-- MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Title`
FROM
	`Articles` `t1`
ORDER BY
	`t1`.`Id`



