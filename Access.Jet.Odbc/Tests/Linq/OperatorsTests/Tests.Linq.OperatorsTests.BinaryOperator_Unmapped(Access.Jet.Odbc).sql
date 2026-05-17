-- Access.Jet.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 2
DECLARE @value Int -- Int32
SET     @value = 2
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	[r].[Id],
	[r].[Field],
	[r].[FieldN],
	[r].[FieldClass]
FROM
	[OperatorTable] [r]
WHERE
	[r].[Field] = ? AND [r].[FieldN] = ? AND [r].[FieldClass] = ?

