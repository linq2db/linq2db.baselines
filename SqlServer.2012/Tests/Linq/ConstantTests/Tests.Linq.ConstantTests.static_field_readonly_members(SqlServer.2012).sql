BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestConstantsData]', N'U') IS NOT NULL)
	DROP TABLE [TestConstantsData]

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','bc7b663d-0fde-4327-8f92-5d8cc3a11d11',N'StrValue')

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InitOnlyId Int -- Int32
SET     @InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @InitOnlyId

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InitOnlyId Int -- Int32
SET     @InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @InitOnlyId

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestConstantsData]', N'U') IS NOT NULL)
	DROP TABLE [TestConstantsData]

