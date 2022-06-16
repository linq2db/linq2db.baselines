BeforeExecute
-- SQLite.MS SQLite
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Length([t].[BinaryValue])
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

