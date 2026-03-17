Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX(`p`.`QuantityPerUnit`)
FROM `Products` AS `p`
WHERE ((@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)) AND (`p`.`ProductName` LIKE 'U%')


-- MySql.5.7.MySqlConnector MySql57

SELECT
	MAX(`e`.`QuantityPerUnit`)
FROM
	`Products` `e`
WHERE
	`e`.`ProductName` LIKE 'U%' ESCAPE '~'



-- MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Products`
WHERE
	`Products`.`ProductName` = 'a'



