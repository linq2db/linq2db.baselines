BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1110TB]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp Date -- DateTime
SET     @TimeStamp = #2020-02-29 17:54:55#

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1110TB]

