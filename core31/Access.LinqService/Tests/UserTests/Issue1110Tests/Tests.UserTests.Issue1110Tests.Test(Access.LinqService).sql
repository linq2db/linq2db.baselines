BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 Date -- DateTime
SET     @TimeStamp_1 = #2020-02-29 17:54:55#

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1110TB]

