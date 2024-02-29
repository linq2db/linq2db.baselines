BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	Count(*) = 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] <= ?

