-- MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`e`.`ProductID` as `ProductId`
		FROM
			`Products` `e`
		WHERE
			`e`.`UnitsInStock` IS NOT NULL
		UNION ALL
		SELECT
			`e_1`.`ProductID` as `ProductId`
		FROM
			`Products` `e_1`
		WHERE
			`e_1`.`UnitsOnOrder` IS NOT NULL
	) `t1`



Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT COUNT(*)
FROM `Products` AS `p`
WHERE (((@ef_filter__p1 OR (`p`.`ProductID` > 2)) AND (@ef_filter__p1 OR NOT (`p`.`Discontinued`))) AND ((@ef_filter__p5 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`))) AND `p`.`UnitsInStock` IS NOT NULL


Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT COUNT(*)
FROM `Products` AS `p`
WHERE (((@ef_filter__p1 OR (`p`.`ProductID` > 2)) AND (@ef_filter__p1 OR NOT (`p`.`Discontinued`))) AND ((@ef_filter__p5 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`))) AND `p`.`UnitsOnOrder` IS NOT NULL


-- MariaDB.10.MySqlConnector MariaDB
SELECT
	`g_1`.`SupplierID`,
	COUNT(CASE
		WHEN `g_1`.`Discontinued` = 0 THEN 1
		ELSE NULL
	END),
	COUNT(CASE
		WHEN `g_1`.`Discontinued` = 1 THEN 1
		ELSE NULL
	END)
FROM
	`Products` `g_1`
GROUP BY
	`g_1`.`SupplierID`



Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT COUNT(*)
FROM (
    SELECT DISTINCT `p`.`SupplierID`
    FROM `Products` AS `p`
    WHERE ((@ef_filter__p1 OR (`p`.`ProductID` > 2)) AND (@ef_filter__p1 OR NOT (`p`.`Discontinued`))) AND ((@ef_filter__p5 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`))
) AS `p0`


