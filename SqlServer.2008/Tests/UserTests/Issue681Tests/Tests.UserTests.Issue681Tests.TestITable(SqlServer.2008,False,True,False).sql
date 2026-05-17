-- SqlServer.2008

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestData]..[Issue681Table] [t1]

