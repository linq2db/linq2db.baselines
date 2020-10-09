BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT 
	Iif(Min([t1].[ParentID]) IS NULL, ?, Min([t1].[ParentID]))
FROM
	[Parent] [t1]

