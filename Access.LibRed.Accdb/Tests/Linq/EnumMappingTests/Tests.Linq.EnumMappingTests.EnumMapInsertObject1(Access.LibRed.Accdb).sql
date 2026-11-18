-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 101
DECLARE @TestField  -- Int32
SET     @TestField = 12

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	@Id,
	@TestField
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

