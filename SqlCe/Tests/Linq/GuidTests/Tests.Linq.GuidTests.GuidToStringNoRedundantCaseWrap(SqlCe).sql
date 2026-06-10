-- SqlCe

SELECT
	Lower(CAST([t].[Id] AS NChar(36))) as [c1]
FROM
	[TableWithGuid] [t]

-- SqlCe

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NChar(36))) = 'x'

