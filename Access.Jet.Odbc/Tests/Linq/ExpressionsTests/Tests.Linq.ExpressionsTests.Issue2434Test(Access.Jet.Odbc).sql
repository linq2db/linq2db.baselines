BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue2434Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue2434Table]
(
	[Id]        Int           NOT NULL,
	[FirstName] NVarChar(255)     NULL,
	[LastName]  NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FirstName] + ' ' + [t1].[LastName]
FROM
	[Issue2434Table] [t1]
ORDER BY
	[t1].[FirstName] + ' ' + [t1].[LastName]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue2434Table]

