-- SqlServer.2022
SELECT
	MIN(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

