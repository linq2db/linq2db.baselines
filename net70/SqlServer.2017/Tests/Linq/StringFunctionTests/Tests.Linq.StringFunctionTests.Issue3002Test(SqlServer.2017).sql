BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]     Int            NOT NULL,
		[Value]  NVarChar(50)       NULL,
		[Value2] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value],
	[Value2]
)
VALUES
(
	1,
	N'Test',
	N'SampleClass'
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value],
	[Value2]
)
VALUES
(
	2,
	N'Value',
	N'SomeTest'
)

BeforeExecute
-- SqlServer.2017
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test_2 NVarChar(4000) -- String
SET     @test_2 = N'%Test%'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[SampleClass] [sampleClass_1]
		WHERE
			([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE N'~')
	), 1, 0)

BeforeExecute
-- SqlServer.2017
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test_2 NVarChar(4000) -- String
SET     @test_2 = N'%Test%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE N'~')

BeforeExecute
-- SqlServer.2017
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test_2 NVarChar(4000) -- String
SET     @test_2 = N'%Value%'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[SampleClass] [sampleClass_1]
		WHERE
			([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE N'~')
	), 1, 0)

BeforeExecute
-- SqlServer.2017
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test_2 NVarChar(4000) -- String
SET     @test_2 = N'%Value%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE N'~')

BeforeExecute
-- SqlServer.2017
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test_2 NVarChar(4000) -- String
SET     @test_2 = N'%Class%'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[SampleClass] [sampleClass_1]
		WHERE
			([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE N'~')
	), 1, 0)

BeforeExecute
-- SqlServer.2017
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test_2 NVarChar(4000) -- String
SET     @test_2 = N'%Class%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_2 ESCAPE N'~')

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

