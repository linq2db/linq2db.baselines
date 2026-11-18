-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON ([p].[ID] = [a_ChildInner].[ParentID])

