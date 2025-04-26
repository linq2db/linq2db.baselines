BeforeExecute
-- SqlCe

SELECT TOP (1)
	Lower(CAST([t].[Id] AS NChar(36))) as [c1]
FROM
	[TableWithGuid] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NChar(36))) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NChar(36))) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NChar(36))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NChar(36))) LIKE '8f4-53%' ESCAPE '~'

