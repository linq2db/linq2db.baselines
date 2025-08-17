BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] IN (12)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

