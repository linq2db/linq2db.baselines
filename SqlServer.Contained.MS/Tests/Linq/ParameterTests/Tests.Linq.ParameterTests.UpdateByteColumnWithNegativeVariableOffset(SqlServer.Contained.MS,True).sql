-- SqlServer.Contained.MS SqlServer.2025
UPDATE
	[ByteFieldUpdateTable]
SET
	[Field] = CAST(CAST([ByteFieldUpdateTable].[Field] AS Int) + -1 AS TinyInt)

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]

