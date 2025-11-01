-- SqlCe

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

