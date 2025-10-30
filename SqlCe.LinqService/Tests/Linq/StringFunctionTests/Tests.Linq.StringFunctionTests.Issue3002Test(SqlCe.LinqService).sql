BeforeExecute
-- SqlCe (asynchronously)

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
-- SqlCe (asynchronously)

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
-- SqlCe (asynchronously)
DECLARE @test NVarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 NVarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END as [c1]

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @test NVarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 NVarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*) as [Count_1]
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @test NVarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END as [c1]

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @test NVarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*) as [Count_1]
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @test NVarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END as [c1]

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @test NVarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 NVarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*) as [Count_1]
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE '~'

