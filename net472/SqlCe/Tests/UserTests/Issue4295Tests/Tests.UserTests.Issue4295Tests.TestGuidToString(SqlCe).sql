BeforeExecute
-- SqlCe

DROP TABLE [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [InfeedAdvicePositionDTO]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	Convert(NVarChar(36), [infeed].[Id])
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Convert(NVarChar(36), [infeed].[Id]) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Convert(NVarChar(36), [infeed].[Id]) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Convert(NVarChar(36), [infeed].[Id]) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Convert(NVarChar(36), [infeed].[Id])) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- SqlCe

DROP TABLE [InfeedAdvicePositionDTO]

