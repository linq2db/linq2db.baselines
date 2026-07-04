-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = 42
DECLARE @StrValue NVarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO [VOptionTable]
(
	[Id],
	[IntValue],
	[StrValue]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @StrValue NVarChar -- String
SET     @StrValue = NULL

INSERT INTO [VOptionTable]
(
	[Id],
	[IntValue],
	[StrValue]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[IntValue],
	[r].[StrValue]
FROM
	[VOptionTable] [r]
WHERE
	[r].[Id] = 1

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[IntValue],
	[r].[StrValue]
FROM
	[VOptionTable] [r]
WHERE
	[r].[Id] = 2

