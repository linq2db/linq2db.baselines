BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	IIF(Count(*) = 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] <= @n

