BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1110TB]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @TimeStamp  -- DateTime
SET     @TimeStamp = #2020-02-29 17:54:55#

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1110TB]

