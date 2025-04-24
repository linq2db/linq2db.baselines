BeforeExecute
-- SqlCe
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO [TableWithGuid]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t].[Id]
FROM
	[TableWithGuid] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	CAST([t].[Id] AS NVarChar(36)) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	CAST([t].[Id] AS NVarChar(36)) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	CAST([t].[Id] AS NVarChar(36)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '293ae%' ESCAPE '~'

