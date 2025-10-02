BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

