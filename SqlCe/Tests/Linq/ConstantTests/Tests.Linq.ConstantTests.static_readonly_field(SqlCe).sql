BeforeExecute
-- SqlCe

DROP TABLE [TestConstantsData]

BeforeExecute
-- SqlCe

CREATE TABLE [TestConstantsData]
(
	[Id]                Int              NOT NULL,
	[GuidValue]         UNIQUEIDENTIFIER NOT NULL,
	[GuidNullableValue] UNIQUEIDENTIFIER     NULL,
	[StringValue]       NVarChar(255)        NULL,

	CONSTRAINT [PK_TestConstantsData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
SELECT 1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','bc7b663d-0fde-4327-8f92-5d8cc3a11d11','StrValue'

BeforeExecute
-- SqlCe

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[GuidValue] = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	[e].[GuidNullableValue] = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	[e].[GuidNullableValue] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TestConstantsData]

