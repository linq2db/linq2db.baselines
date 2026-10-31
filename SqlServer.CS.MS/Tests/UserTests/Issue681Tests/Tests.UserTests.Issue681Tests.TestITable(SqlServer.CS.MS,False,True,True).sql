-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataMSCS].[dbo].[Issue681Table] [t1]

