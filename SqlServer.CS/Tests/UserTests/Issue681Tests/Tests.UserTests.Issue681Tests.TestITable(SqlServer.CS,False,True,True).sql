-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataCS].[dbo].[Issue681Table] [t1]

