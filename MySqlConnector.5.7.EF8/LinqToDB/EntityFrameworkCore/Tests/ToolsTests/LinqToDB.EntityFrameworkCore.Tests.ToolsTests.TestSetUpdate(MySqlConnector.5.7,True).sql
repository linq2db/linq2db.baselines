Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT `c`.`CustomerID`, `c`.`Address`, `c`.`City`, `c`.`CompanyName`, `c`.`ContactName`, `c`.`ContactTitle`, `c`.`Country`, `c`.`Fax`, `c`.`IsDeleted`, `c`.`Phone`, `c`.`PostalCode`, `c`.`Region`
FROM `Customers` AS `c`
WHERE (@__ef_filter__p_0 OR NOT (`c`.`IsDeleted`)) OR NOT (`c`.`IsDeleted`)
LIMIT 1


-- MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @CompanyName VarChar(19) -- String
SET     @CompanyName = 'Alfreds Futterkiste'
DECLARE @CustomerId VarChar(5) -- String
SET     @CustomerId = 'ALFKI'

UPDATE
	`Customers` `e`
SET
	`e`.`CompanyName` = @CompanyName
WHERE
	(NOT `e`.`IsDeleted` OR NOT `e`.`IsDeleted`) AND `e`.`CustomerID` = @CustomerId



