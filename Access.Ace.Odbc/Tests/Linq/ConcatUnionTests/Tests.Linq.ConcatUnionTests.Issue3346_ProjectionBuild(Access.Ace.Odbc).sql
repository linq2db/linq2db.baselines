BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ComplexPerson]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ComplexPerson]
(
	[Id]        Int           NOT NULL,
	[FirstName] NVarChar(255)     NULL,
	[LastName]  NVarChar(255)     NULL,

	CONSTRAINT [PK_ComplexPerson] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[FirstName],
	[x].[LastName]
FROM
	[ComplexPerson] [x]
WHERE
	[x].[Id] < 10
UNION
SELECT
	[x_1].[Id],
	[x_1].[FirstName],
	[x_1].[LastName]
FROM
	[ComplexPerson] [x_1]
WHERE
	[x_1].[Id] < 20

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ComplexPerson]

