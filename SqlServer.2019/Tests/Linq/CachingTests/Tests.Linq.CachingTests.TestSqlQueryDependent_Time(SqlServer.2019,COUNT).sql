-- SqlServer.2019
SELECT
	COUNT(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

