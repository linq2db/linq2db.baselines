BeforeExecute
-- SqlServer.2022

SELECT
	MAX(TIMEDATATYPE)
FROM
	[ALLTYPES] [t]
		CROSS JOIN [Child] [c_1]

