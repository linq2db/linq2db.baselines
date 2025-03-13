Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT `p`.`QuantityPerUnit` AS `Quantity`
FROM `Products` AS `p`
WHERE (@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`QuantityPerUnit`
FROM
	`Products` `p`



