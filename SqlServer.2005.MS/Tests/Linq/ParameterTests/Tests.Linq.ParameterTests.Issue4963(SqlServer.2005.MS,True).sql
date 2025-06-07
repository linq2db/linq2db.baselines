BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

