-- SqlCe

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

-- SqlCe

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlCe

SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

