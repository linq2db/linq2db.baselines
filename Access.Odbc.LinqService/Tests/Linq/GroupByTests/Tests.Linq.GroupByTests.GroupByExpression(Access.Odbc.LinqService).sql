BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	IIF(MIN([gr].[ParentID]) IS NOT NULL, MIN([gr].[ParentID]), CVar(?))
FROM
	[Parent] [gr]

