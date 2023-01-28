BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TestTempTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TestTempTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TestTempTable]

