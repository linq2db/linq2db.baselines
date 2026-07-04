-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 42
DECLARE @StrValue VarWChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO [VOptionTable]
(
	[Id],
	[IntValue],
	[StrValue]
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @StrValue VarWChar -- String
SET     @StrValue = NULL

INSERT INTO [VOptionTable]
(
	[Id],
	[IntValue],
	[StrValue]
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id],
	[r].[IntValue],
	[r].[StrValue]
FROM
	[VOptionTable] [r]
WHERE
	[r].[Id] = 1

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id],
	[r].[IntValue],
	[r].[StrValue]
FROM
	[VOptionTable] [r]
WHERE
	[r].[Id] = 2

