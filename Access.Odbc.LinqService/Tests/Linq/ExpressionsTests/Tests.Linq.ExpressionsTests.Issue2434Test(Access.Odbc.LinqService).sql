BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue2434Table]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue2434Table]
(
	[Id]        Int           NOT NULL,
	[FirstName] NVarChar(255)     NULL,
	[LastName]  NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[Issue2434Table] [t1]
ORDER BY
	[t1].[FirstName] + ' ' + [t1].[LastName]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue2434Table]

