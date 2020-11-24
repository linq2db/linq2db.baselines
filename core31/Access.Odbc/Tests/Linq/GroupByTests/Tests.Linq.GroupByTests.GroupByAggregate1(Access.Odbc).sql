BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t2].[Key_1]
FROM
	(
		SELECT
			Iif((
				SELECT
					Count(*)
				FROM
					[Child] [t1]
				WHERE
					[selectParam].[ParentID] = [t1].[ParentID]
			) > 0 AND (
				SELECT
					Avg([c_1].[ParentID])
				FROM
					[Child] [c_1]
				WHERE
					[selectParam].[ParentID] = [c_1].[ParentID]
			) > 3, True, False) as [Key_1]
		FROM
			[Parent] [selectParam]
	) [t2]
GROUP BY
	[t2].[Key_1]

