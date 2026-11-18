-- Access.Jet.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 2
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 2
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 2

SELECT
	[r].[Id],
	[r].[Field],
	[r].[FieldN],
	[r].[FieldClass]
FROM
	[OperatorTable] [r]
WHERE
	[r].[Field] = @value AND [r].[FieldN] = @value_1 AND
	[r].[FieldClass] = @value_2

