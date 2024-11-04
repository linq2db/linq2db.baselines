BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [WhereWithString]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [WhereWithString]
(
	[Id]          Int           NOT NULL,
	[StringValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringValue NVarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [WhereWithString]

