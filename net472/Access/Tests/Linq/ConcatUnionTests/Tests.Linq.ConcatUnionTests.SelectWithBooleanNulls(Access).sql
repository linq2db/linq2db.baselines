BeforeExecute
-- Access AccessOleDb

SELECT
	[t2].[a],
	[t2].[b]
FROM
	(
		SELECT
			Iif(EXISTS(
				SELECT
					*
				FROM
					[Child] [t1]
			), True, False) as [a],
			Iif([x].[ParentID] <> 0, True, False) as [b]
		FROM
			[Parent] [x]
	) [t2]
UNION ALL
SELECT
	[t4].[a],
	[t4].[b]
FROM
	(
		SELECT
			Iif(EXISTS(
				SELECT
					*
				FROM
					[Child] [t3]
			), True, False) as [a],
			NULL as [b]
		FROM
			[Parent] [x_1]
	) [t4]

