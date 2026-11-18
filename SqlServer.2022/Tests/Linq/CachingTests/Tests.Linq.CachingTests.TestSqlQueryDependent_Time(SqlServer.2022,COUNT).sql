-- SqlServer.2022
SELECT
	COUNT(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

