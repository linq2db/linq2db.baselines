﻿BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @MoneyValue Decimal(2, 1)
SET     @MoneyValue = 1.1

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = @MoneyValue
WHERE
	[LinqDataTypes].[ID] = -1

