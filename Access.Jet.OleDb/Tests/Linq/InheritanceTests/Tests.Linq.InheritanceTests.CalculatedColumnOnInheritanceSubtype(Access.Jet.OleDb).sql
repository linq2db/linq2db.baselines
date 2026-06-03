-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @Name_First VarWChar(4) -- String
SET     @Name_First = 'John'
DECLARE @Name_Second VarWChar(3) -- String
SET     @Name_Second = 'Doe'

INSERT INTO [CalcSubtypeTable]
(
	[Id],
	[Type],
	[Name_First],
	[Name_Second]
)
VALUES
(
	@Id,
	@Type,
	@Name_First,
	@Name_Second
)

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Type],
	[t1].[Name_First],
	[t1].[Name_Second],
	IIF([t1].[Name_First] IS NULL, '', [t1].[Name_First]) + ' ' + IIF([t1].[Name_Second] IS NULL, '', [t1].[Name_Second])
FROM
	[CalcSubtypeTable] [t1]

