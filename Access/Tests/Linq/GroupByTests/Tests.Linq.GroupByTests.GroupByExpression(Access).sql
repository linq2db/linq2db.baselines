BeforeExecute
-- Access AccessOleDb
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	IIF(MIN([gr].[ParentID]) IS NOT NULL, MIN([gr].[ParentID]), CVar(@defValue))
FROM
	[Parent] [gr]

