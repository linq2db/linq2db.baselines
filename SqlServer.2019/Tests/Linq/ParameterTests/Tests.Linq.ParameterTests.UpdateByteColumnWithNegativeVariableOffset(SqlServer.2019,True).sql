-- SqlServer.2019
UPDATE
	[ByteFieldUpdateTable]
SET
	[Field] = CAST(CAST([ByteFieldUpdateTable].[Field] AS Int) + -1 AS TinyInt)

-- SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]

