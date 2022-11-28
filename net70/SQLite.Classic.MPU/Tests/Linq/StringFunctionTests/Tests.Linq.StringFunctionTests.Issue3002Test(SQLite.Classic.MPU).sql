BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]     INTEGER       NOT NULL,
	[Value]  NVarChar(50)      NULL,
	[Value2] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test_2 NVarChar(6) -- String
SET     @test_2 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test_2 NVarChar(6) -- String
SET     @test_2 = '%Test%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE '~')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Value%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE '~')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test_2 NVarChar(7) -- String
SET     @test_2 = '%Class%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE '~')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

