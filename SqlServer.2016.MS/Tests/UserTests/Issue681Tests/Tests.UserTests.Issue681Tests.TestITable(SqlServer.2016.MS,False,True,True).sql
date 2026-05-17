-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataMS].[dbo].[Issue681Table] [t1]

