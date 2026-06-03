-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @Stored NVarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO [CalcSubtypeDual]
(
	[Id],
	[Type],
	[Stored]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Stored],
	IIF([t1].[Stored] IS NULL, '', [t1].[Stored]) + '!'
FROM
	[CalcSubtypeDual] [t1]

