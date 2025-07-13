BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT
	[entity].[ID],
	[entity].[BigIntValue],
	[entity].[IntValue]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = 12

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

