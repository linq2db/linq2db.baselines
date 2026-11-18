-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	(
		SELECT
			STRING_AGG(CStr([a_Children].[ChildID]), ', ')
		FROM
			[Child] [a_Children]
		WHERE
			[s].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [s]

