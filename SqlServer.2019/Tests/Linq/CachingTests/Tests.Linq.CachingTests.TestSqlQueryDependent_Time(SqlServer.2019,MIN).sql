-- SqlServer.2019
SELECT
	MIN(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

