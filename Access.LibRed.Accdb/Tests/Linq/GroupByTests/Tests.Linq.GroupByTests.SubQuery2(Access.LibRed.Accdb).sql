-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @n  -- Int32
SET     @n = 1

SELECT DISTINCT
	[g_1].[ParentID] + 1
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 1 > @n

