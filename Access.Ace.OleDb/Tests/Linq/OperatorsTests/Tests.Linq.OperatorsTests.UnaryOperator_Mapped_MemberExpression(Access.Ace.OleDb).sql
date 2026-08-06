-- Access.Ace.OleDb AccessOleDb
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
	[r].[Field] * 3 = @value AND [r].[FieldN] * 3 = @value_1 AND
	[r].[FieldClass] * 3 = @value_2

