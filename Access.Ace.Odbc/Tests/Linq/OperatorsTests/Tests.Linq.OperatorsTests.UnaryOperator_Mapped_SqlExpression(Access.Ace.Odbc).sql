-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 6
DECLARE @value Int -- Int32
SET     @value = 6
DECLARE @value Int -- Int32
SET     @value = 6

SELECT
	[r].[Id],
	[r].[Field],
	[r].[FieldN],
	[r].[FieldClass]
FROM
	[OperatorTable] [r]
WHERE
	3 * [r].[Field] = ? AND 3 * [r].[FieldN] = ? AND 3 * [r].[FieldClass] = ?

