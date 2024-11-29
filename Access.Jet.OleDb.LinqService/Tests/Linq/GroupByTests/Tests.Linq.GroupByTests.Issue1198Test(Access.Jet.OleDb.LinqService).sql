BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1192Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue1192Table]
(
	[IdId]      Int NOT NULL,
	[MyOtherId] Int NOT NULL,
	[Status]    Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1192Table]

