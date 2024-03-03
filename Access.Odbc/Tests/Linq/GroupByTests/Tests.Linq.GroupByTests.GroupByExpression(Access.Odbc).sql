BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	IIF(Min([gr].[ParentID]) IS NULL, CVar(?), Min([gr].[ParentID]))
FROM
	[Parent] [gr]

