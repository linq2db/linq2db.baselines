BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1438]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1438]
(
	[Id]  Int  NOT NULL IDENTITY,
	[Has] Bit  NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Has Bit -- Boolean
SET     @Has = True

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1438]

