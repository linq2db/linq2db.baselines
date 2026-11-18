-- SqlServer.2016
SELECT
	MAX(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

