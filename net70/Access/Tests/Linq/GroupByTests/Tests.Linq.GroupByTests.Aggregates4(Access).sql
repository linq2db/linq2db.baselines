BeforeExecute
-- Access AccessOleDb

SELECT
	Count([t1].[ParentID]),
	(
		SELECT
			Sum([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[t2].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > 30
	)
FROM
	[Child] [t2]
		LEFT JOIN (
			SELECT
				[_].[ParentID]
			FROM
				[Child] [_]
			WHERE
				[_].[ChildID] > 30
			GROUP BY
				[_].[ParentID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID])
GROUP BY
	[t2].[ParentID]

