BeforeExecute
-- Access AccessOleDb
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT 
	Iif(Min([t1].[ParentID]) IS NULL, @defValue, Min([t1].[ParentID]))
FROM
	[Parent] [t1]

