Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT MAX(`p`.`QuantityPerUnit`)
FROM `Products` AS `p`
WHERE (((@ef_filter__p1 OR (`p`.`ProductID` > 2)) AND (@ef_filter__p1 OR NOT (`p`.`Discontinued`))) AND ((@ef_filter__p5 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`))) AND (`p`.`ProductName` LIKE 'U%')


-- MySql.5.7.MySqlConnector MySql57
SELECT
	MAX(`e`.`QuantityPerUnit`)
FROM
	`Products` `e`
WHERE
	NOT `e`.`IsDeleted` AND `e`.`ProductName` LIKE 'U%' ESCAPE '~'



-- MySql.5.7.MySqlConnector MySql57
DELETE  
FROM
	`Products`
WHERE
	NOT `Products`.`IsDeleted` AND `Products`.`ProductName` = 'a'



