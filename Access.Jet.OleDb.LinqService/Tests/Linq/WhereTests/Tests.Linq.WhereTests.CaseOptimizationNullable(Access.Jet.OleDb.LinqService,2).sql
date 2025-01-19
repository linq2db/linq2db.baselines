BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @filterValue Integer -- Int32
SET     @filterValue = 2

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[Id] = @filterValue

