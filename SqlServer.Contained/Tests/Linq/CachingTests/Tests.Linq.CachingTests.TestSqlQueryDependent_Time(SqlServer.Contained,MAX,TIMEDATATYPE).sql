-- SqlServer.Contained SqlServer.2019

SELECT
	MAX(TIMEDATATYPE)
FROM
	[ALLTYPES] [t]
		CROSS JOIN [Child] [c_1]

