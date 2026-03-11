-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[PK],
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

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_2] [t1]

