SELECT `a`.`Id`, `a`.`Title`, `s`.`ArticlesId`, `s`.`TagsTagId`, `s`.`tag_id_col`, `s`.`Label`
FROM `Articles` AS `a`
LEFT JOIN (
    SELECT `m`.`ArticlesId`, `m`.`TagsTagId`, `t`.`tag_id_col`, `t`.`Label`
    FROM `MmArticleMmTag` AS `m`
    INNER JOIN `Tags` AS `t` ON `m`.`TagsTagId` = `t`.`tag_id_col`
) AS `s` ON `a`.`Id` = `s`.`ArticlesId`
ORDER BY `a`.`Id`, `s`.`ArticlesId`, `s`.`TagsTagId`




-- MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id`,
	`o`.`Label`
FROM
	`Articles` `m_1`
		INNER JOIN `MmArticleMmTag` `d` ON `m_1`.`Id` = `d`.`ArticlesId`
		INNER JOIN `Tags` `o` ON `o`.`tag_id_col` = `d`.`TagsTagId`
ORDER BY
	`m_1`.`Id`





-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Title`
FROM
	`Articles` `t1`
ORDER BY
	`t1`.`Id`



