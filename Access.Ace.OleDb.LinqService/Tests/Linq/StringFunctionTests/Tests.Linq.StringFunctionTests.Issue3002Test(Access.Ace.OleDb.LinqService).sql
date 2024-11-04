BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SampleClass]
(
	[Id]     Int           NOT NULL,
	[Value]  NVarChar(50)      NULL,
	[Value2] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Test
DECLARE @test_1 VarWChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Test
DECLARE @test_1 VarWChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Value
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Value
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Class
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Class
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SampleClass]

