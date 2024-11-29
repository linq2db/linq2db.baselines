--  MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @take Int32
SET     @take = 20

DELETE   `e`
FROM
	(
		SELECT
			`e`.`CustomerID` as `CustomerId`
		FROM
			`Customers` `e`
		WHERE
			`e`.`IsDeleted` = 1
		LIMIT @take
	)
WHERE
	1 = 0



