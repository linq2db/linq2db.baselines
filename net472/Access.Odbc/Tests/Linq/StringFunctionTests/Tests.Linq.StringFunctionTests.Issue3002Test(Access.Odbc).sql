BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SampleClass]
(
	[Id]     Int           NOT NULL,
	[Value]  NVarChar(50)      NULL,
	[Value2] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test_2 NVarChar(6) -- String
SET     @test_2 = '%Test%'

SELECT
	Count(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test_2 NVarChar(6) -- String
SET     @test_2 = '%Test%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Value%'

SELECT
	Count(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Value%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Class%'

SELECT
	Count(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Class%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = ? OR [sampleClass_1].[Value2] LIKE ?)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

