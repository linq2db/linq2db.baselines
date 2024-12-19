BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1107TB]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @TestDate DateTime
SET     @TestDate = #2018-01-01#

INSERT INTO [Issue1107TB]
(
	[Id],
	[TestDate]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1107TB]

