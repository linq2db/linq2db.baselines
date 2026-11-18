-- SqlServer.2014
SELECT
	MAX(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

