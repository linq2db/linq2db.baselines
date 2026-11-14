-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @test NVarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 NVarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @test NVarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 NVarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @test NVarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @test NVarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @test NVarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @test NVarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1

