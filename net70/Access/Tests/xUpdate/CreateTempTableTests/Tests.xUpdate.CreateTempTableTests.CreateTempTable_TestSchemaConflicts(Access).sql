BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestTempTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestTempTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

CREATE TABLE [TempTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestTempTable]

