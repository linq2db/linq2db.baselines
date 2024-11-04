BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SampleClass]
(
	[Id]     Int           NOT NULL,
	[Value]  NVarChar(50)      NULL,
	[Value2] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [SampleClass]
(
	[Id],
	[Value],
	[Value2]
)
VALUES
(
	1,
	'Test',
	'SampleClass'
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [SampleClass]
(
	[Id],
	[Value],
	[Value2]
)
VALUES
(
	2,
	'Value',
	'SomeTest'
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test NVarChar(6) -- String
SET     @test = '%Test%'

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test NVarChar(6) -- String
SET     @test = '%Test%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test NVarChar(7) -- String
SET     @test = '%Value%'

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test NVarChar(7) -- String
SET     @test = '%Value%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test NVarChar(7) -- String
SET     @test = '%Class%'

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test NVarChar(7) -- String
SET     @test = '%Class%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SampleClass]

