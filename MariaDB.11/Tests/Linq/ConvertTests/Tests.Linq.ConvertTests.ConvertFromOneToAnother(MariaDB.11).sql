BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value NewDecimal(9, 5) -- Decimal
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Float -- Single
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(@value as FLOAT)
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value NewDecimal(9, 5) -- Decimal
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Float -- Single
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(@value as DOUBLE)
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Int32
SET     @take = 1

SELECT
	@value
FROM
	`LinqDataTypes` `_`
LIMIT @take

