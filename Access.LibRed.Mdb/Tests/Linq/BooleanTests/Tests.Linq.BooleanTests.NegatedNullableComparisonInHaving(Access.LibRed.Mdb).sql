-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT DISTINCT
	[g_1].[ParentID] MOD 3
FROM
	[Parent] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [x]
		WHERE
			[g_1].[ParentID] MOD 3 = [x].[ParentID] MOD 3 AND ([x].[Value1] <> 1 OR [x].[Value1] IS NULL)
	)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[g_2].[Key_1],
	COUNT(CASE
		WHEN [g_2].[c1] = False THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			[g_1].[ParentID] MOD 2 as [Key_1],
			CASE
				WHEN [g_1].[Value1] = 1 THEN True
				ELSE False
			END as [c1]
		FROM
			[Parent] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]
HAVING
	COUNT(CASE
		WHEN [g_2].[c1] = False THEN 1
		ELSE NULL
	END) > 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

