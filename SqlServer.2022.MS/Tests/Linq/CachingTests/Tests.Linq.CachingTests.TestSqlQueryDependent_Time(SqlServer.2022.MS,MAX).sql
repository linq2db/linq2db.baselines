-- SqlServer.2022.MS SqlServer.2022
SELECT
	MAX(timeDataType)
FROM
	[AllTypes] [t]
		CROSS JOIN [Child] [c_1]

