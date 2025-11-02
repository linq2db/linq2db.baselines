-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NULL OR NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

