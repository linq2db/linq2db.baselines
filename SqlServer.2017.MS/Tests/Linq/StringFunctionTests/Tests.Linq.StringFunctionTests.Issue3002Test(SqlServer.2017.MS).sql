BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @test NVarChar(4000) -- String
SET     @test = N'Test'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Test%'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[SampleClass] [sampleClass_1]
		WHERE
			[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'
	), 1, 0)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @test NVarChar(4000) -- String
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @test NVarChar(4000) -- String
SET     @test = N'Value'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Value%'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[SampleClass] [sampleClass_1]
		WHERE
			[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'
	), 1, 0)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @test NVarChar(4000) -- String
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @test NVarChar(4000) -- String
SET     @test = N'Class'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Class%'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[SampleClass] [sampleClass_1]
		WHERE
			[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'
	), 1, 0)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @test NVarChar(4000) -- String
SET     @test = N'Class'
DECLARE @test_1 NVarChar(4000) -- String
SET     @test_1 = N'%Class%'

SELECT
	COUNT(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	[sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1 ESCAPE N'~'

