-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	101,
	3
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[LinqDataTypes] [r]
SET
	[r].[IntValue] = 4
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 3

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

