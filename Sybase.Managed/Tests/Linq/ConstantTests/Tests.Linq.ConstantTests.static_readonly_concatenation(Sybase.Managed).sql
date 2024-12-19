BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestConstantsData') IS NOT NULL)
	DROP TABLE [TestConstantsData]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestConstantsData') IS NULL)
	EXECUTE('
		CREATE TABLE [TestConstantsData]
		(
			[Id]                Int           NOT NULL,
			[GuidValue]         VARCHAR(36)   NOT NULL,
			[GuidNullableValue] VARCHAR(36)       NULL,
			[StringValue]       NVarChar(255)     NULL,

			CONSTRAINT [PK_TestConstantsData] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
SELECT 1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','bc7b663d-0fde-4327-8f92-5d8cc3a11d11','StrValue'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(9) -- String
SET     @p = 'StrValue1'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[StringValue] + '1' = @p

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestConstantsData') IS NOT NULL)
	DROP TABLE [TestConstantsData]

