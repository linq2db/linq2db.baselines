BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

