BeforeExecute
-- Access AccessOleDb
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	IIF(Min([gr].[ParentID]) IS NULL, CVar(@defValue), Min([gr].[ParentID]))
FROM
	[Parent] [gr]

