-- Access.Jet.OleDb AccessOleDb
DECLARE @flag Integer -- Int32
SET     @flag = 1
DECLARE @flag_1 Integer -- Int32
SET     @flag_1 = 1

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] BAND @flag) = @flag_1

