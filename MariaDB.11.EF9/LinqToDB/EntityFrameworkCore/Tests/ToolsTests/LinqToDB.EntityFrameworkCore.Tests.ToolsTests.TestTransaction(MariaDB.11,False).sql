Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX(`p`.`QuantityPerUnit`)
FROM `Products` AS `p`
WHERE ((@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)) AND (`p`.`ProductName` LIKE 'U%')


-- MariaDB.10.MySqlConnector MariaDB

SELECT
	MAX(`e`.`QuantityPerUnit`)
FROM
	`Products` `e`
WHERE
	`e`.`ProductName` LIKE 'U%' ESCAPE '~'



-- MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Products`
WHERE
	`Products`.`ProductName` = 'a'



