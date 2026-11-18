-- SqlServer.2016
SELECT
	MIN(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

