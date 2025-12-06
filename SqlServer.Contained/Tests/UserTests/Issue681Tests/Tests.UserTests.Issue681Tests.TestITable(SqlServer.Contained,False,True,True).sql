-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataContained].[dbo].[Issue681Table] [t1]

