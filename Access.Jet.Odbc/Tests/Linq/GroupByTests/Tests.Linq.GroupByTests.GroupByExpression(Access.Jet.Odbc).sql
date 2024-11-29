BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	IIF(MIN([gr].[ParentID]) IS NULL, CVar(?), MIN([gr].[ParentID]))
FROM
	[Parent] [gr]

