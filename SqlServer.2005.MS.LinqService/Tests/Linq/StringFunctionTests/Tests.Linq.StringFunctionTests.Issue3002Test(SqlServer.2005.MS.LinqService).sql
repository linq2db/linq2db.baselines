BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]     Int            NOT NULL,
		[Value]  NVarChar(50)       NULL,
		[Value2] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @test NVarChar(50) -- String
SET     @test = N'Test'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Test%'

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @test NVarChar(50) -- String
SET     @test = N'Test'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Test%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @test NVarChar(50) -- String
SET     @test = N'Value'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Value%'

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @test NVarChar(50) -- String
SET     @test = N'Value'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Value%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @test NVarChar(50) -- String
SET     @test = N'Class'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Class%'

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				[SampleClass] [sampleClass_1]
			WHERE
				[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @test NVarChar(50) -- String
SET     @test = N'Class'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Class%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

