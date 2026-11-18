-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @tt  -- Int64
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	@tt
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

