-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[ByteFieldUpdateTable] [t1]
SET
	[t1].[Field] = [t1].[Field] + -1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]

