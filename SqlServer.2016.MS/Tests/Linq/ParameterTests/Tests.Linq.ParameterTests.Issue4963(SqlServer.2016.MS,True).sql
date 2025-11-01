-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

