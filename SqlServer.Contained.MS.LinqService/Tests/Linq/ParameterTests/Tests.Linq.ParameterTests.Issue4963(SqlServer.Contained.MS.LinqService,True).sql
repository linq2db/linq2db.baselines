BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

