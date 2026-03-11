Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT `p`.`QuantityPerUnit` AS `Quantity`
FROM `Products` AS `p`
WHERE (@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`QuantityPerUnit`
FROM
	`Products` `p`
WHERE
	NOT `p`.`IsDeleted`



