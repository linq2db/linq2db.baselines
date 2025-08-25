BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

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
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @test VarWChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarWChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @test VarWChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarWChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @test VarWChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @test VarWChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @test VarWChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @test VarWChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

