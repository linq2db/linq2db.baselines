-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

