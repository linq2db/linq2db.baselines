BeforeExecute
-- Access AccessOleDb
DECLARE @default Integer -- Int32
SET     @default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[Value1] IS NULL, @default, [p].[Value1]) > 0

