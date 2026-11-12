-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[LinqDataTypes] [r]
SET
	[r].[BigIntValue] = 12
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

