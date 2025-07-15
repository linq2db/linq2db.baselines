BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	'value'
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[Id]      Int           NOT NULL,
	[Renamed] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	'value 2'
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Renamed]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

