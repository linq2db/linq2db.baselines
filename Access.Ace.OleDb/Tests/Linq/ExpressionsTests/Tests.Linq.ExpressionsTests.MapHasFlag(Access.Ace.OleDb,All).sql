-- Access.Ace.OleDb AccessOleDb
DECLARE @flag Integer -- Int32
SET     @flag = 7
DECLARE @flag_1 Integer -- Int32
SET     @flag_1 = 7

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] BAND @flag) = @flag_1

