-- SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestData].[dbo].[Parent] [t1]

