BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1192Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1192Table]
(
	[IdId]      Int NOT NULL,
	[MyOtherId] Int NOT NULL,
	[Status]    Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1192Table]

