BeforeExecute
-- MySqlConnector MySql
DECLARE @value NewDecimal(9, 5) -- Decimal
SET     @value = 6579.64648

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Float -- Single
SET     @value = 6579.64648

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Double
SET     @value = 6579.6464800000003

SELECT
	Cast(@value as Decimal(29, 10))
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value NewDecimal(9, 5) -- Decimal
SET     @value = 6579.64648

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Float -- Single
SET     @value = 6579.64648

SELECT
	Cast(@value as Decimal(29, 10))
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Double
SET     @value = 6579.6464800000003

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT 1

