-- SqlServer.2012

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + -1 AS TinyInt)

-- SqlServer.2012

SELECT TOP (2)
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

