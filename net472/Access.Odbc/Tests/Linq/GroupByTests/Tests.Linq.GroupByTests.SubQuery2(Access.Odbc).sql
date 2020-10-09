BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1

SELECT 
	[ch_1].[ParentID]
FROM
	( 
		SELECT 
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
	) [ch_1]
WHERE
	[ch_1].[ParentID] > ?
GROUP BY
	[ch_1].[ParentID]

