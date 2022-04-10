BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [Issue1107TB]

