-- Access.Ace.OleDb AccessOleDb
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	IIF(MIN([gr].[ParentID]) IS NULL, @defValue, MIN([gr].[ParentID]))
FROM
	[Parent] [gr]

