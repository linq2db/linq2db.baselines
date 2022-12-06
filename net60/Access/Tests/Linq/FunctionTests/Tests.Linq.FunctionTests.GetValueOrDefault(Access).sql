BeforeExecute
-- Access AccessOleDb
DECLARE @_default Integer -- Int32
SET     @_default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[Value1] IS NULL, @_default, [p].[Value1]) > 0

