-- SqlServer.2008
SELECT
	MAX(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

