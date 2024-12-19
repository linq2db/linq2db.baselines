BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1107TB]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @TestDate Date -- DateTime
SET     @TestDate = #2018-01-01#

INSERT INTO [Issue1107TB]
(
	[Id],
	[TestDate]
)
VALUES
(
	@Id,
	@TestDate
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1107TB]

