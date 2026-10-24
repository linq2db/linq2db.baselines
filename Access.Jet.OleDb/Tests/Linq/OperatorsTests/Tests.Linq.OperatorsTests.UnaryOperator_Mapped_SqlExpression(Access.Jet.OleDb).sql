-- Access.Jet.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 6
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 6
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 6

SELECT
	[r].[Id],
	[r].[Field],
	[r].[FieldN],
	[r].[FieldClass]
FROM
	[OperatorTable] [r]
WHERE
	3 * [r].[Field] = @value AND 3 * [r].[FieldN] = @value_1 AND
	3 * [r].[FieldClass] = @value_2

