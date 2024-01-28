BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DataClass]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = #2020-02-29 17:54:55#

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[DataClass] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DataClass]

