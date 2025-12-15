-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- Sybase.Managed Sybase

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	11
)

-- Sybase.Managed Sybase

UPDATE
	[LinqDataTypes]
SET
	[BigIntValue] = 12
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[BigIntValue] = 11

-- Sybase.Managed Sybase

SELECT TOP 1
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

