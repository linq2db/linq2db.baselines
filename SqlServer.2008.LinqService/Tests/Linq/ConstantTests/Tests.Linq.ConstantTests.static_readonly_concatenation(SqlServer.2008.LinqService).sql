BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestConstantsData]', N'U') IS NOT NULL)
	DROP TABLE [TestConstantsData]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestConstantsData]', N'U') IS NULL)
	CREATE TABLE [TestConstantsData]
	(
		[Id]                Int              NOT NULL,
		[GuidValue]         UniqueIdentifier NOT NULL,
		[GuidNullableValue] UniqueIdentifier     NULL,
		[StringValue]       NVarChar(4000)       NULL,

		CONSTRAINT [PK_TestConstantsData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidNullableValue UniqueIdentifier -- Guid
SET     @GuidNullableValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'StrValue'

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
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'StrValue1'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[StringValue] + N'1' = @p AND [e].[StringValue] IS NOT NULL

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestConstantsData]', N'U') IS NOT NULL)
	DROP TABLE [TestConstantsData]

