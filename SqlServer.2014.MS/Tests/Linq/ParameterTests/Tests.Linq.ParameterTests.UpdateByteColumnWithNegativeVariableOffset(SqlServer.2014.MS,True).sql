-- SqlServer.2014.MS SqlServer.2014
UPDATE
	[ByteFieldUpdateTable]
SET
	[Field] = CAST(CAST([ByteFieldUpdateTable].[Field] AS Int) + -1 AS TinyInt)

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]

