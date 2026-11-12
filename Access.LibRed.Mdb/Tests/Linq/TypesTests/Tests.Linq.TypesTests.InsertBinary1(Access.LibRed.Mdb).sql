-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @data Binary
SET     @data = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BinaryValue],
	[BoolValue]
)
VALUES
(
	1001,
	@data,
	True
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

