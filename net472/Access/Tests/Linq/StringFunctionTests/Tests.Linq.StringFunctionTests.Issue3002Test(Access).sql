﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SampleClass]
(
	[Id]     Int           NOT NULL,
	[Value]  NVarChar(50)      NULL,
	[Value2] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Test
DECLARE @test_1 VarWChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	Count(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1)

BeforeExecute
-- Access AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Test
DECLARE @test_1 VarWChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1)

BeforeExecute
-- Access AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Value
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	Count(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1)

BeforeExecute
-- Access AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Value
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1)

BeforeExecute
-- Access AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Class
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	Count(*) > 0
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1)

BeforeExecute
-- Access AccessOleDb
DECLARE @test VarWChar -- String
SET     @test = Class
DECLARE @test_1 VarWChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	Count(*)
FROM
	[SampleClass] [sampleClass_1]
WHERE
	([sampleClass_1].[Value] = @test OR [sampleClass_1].[Value2] LIKE @test_1)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SampleClass]

