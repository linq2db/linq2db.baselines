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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidNullableValue Char(36) -- AnsiStringFixedLength
SET     @GuidNullableValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @StringValue UniVarChar(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
VALUES
(
	@Id,
	@GuidValue,
	@GuidNullableValue,
	@StringValue
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GuidNonReadonly Char(36) -- AnsiStringFixedLength
SET     @GuidNonReadonly = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[GuidValue] = @GuidNonReadonly AND [e].[GuidNullableValue] = @GuidNonReadonly

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

