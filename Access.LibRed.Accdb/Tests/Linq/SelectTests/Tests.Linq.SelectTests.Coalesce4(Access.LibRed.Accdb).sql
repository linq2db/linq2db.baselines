-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t1].[Value1] IS NULL THEN [c_1].[ChildID]
		ELSE [t1].[Value1]
	END
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT TOP 1
				[a_Parent].[Value1]
			FROM
				[Child] [ch]
					LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
			WHERE
				[ch].[ChildID] = [c_1].[ChildID]
		) [t1]

