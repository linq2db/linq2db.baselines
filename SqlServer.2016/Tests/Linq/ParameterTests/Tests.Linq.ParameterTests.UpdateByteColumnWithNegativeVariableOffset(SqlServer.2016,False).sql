-- SqlServer.2016
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	[ByteFieldUpdateTable]
SET
	[Field] = CAST(CAST([ByteFieldUpdateTable].[Field] AS Int) + @offset AS TinyInt)

-- SqlServer.2016
SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]

