-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[PK],
	[t].[ID],
	[t].[GV]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_1] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

