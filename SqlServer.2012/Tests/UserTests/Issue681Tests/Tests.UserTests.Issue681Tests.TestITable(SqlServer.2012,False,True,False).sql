-- SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestData]..[Issue681Table] [t1]

