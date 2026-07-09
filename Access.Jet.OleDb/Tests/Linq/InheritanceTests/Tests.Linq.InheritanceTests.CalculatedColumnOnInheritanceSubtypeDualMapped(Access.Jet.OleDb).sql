-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @Stored VarWChar(4) -- String
SET     @Stored = 'John'

INSERT INTO [CalcSubtypeDual]
(
	[Id],
	[Type],
	[Stored]
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Stored],
	IIF([t1].[Stored] IS NULL, '', [t1].[Stored]) + '!'
FROM
	[CalcSubtypeDual] [t1]

