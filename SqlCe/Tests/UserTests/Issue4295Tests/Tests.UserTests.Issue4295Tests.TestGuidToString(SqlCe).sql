BeforeExecute
-- SqlCe
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO [InfeedAdvicePositionDTO]
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
	Lower(CAST([infeed].[Id] AS NVarChar(36))) as [c1]
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(CAST([infeed].[Id] AS NVarChar(36))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(CAST([infeed].[Id] AS NVarChar(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(CAST([infeed].[Id] AS NVarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Lower(CAST([infeed].[Id] AS NVarChar(36)))) LIKE '293ae%' ESCAPE '~'

