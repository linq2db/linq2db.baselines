-- MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`e`.`IsDeleted`,
	`e`.`CustomerID`,
	`e`.`CompanyName`,
	`e`.`ContactName`,
	`e`.`ContactTitle`,
	`e`.`Address`,
	`e`.`City`,
	`e`.`Region`,
	`e`.`PostalCode`,
	`e`.`Country`,
	`e`.`Phone`,
	`e`.`Fax`
FROM
	`Customers` `e`
WHERE
	NOT `e`.`IsDeleted` AND `e`.`City` IS NOT NULL



