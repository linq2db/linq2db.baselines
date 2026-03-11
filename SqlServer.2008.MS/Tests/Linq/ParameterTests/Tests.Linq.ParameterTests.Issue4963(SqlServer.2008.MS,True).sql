-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

