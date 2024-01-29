BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NULL)
	CREATE TABLE [InfeedAdvicePositionDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	Convert(NVarChar(36), [infeed].[Id])
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- SqlServer.2008

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Convert(NVarChar(36), [infeed].[Id]) LIKE N'%7F4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2008

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Convert(NVarChar(36), [infeed].[Id]) LIKE N'193AE%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2008

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Convert(NVarChar(36), [infeed].[Id]) LIKE N'%8F4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2008

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Convert(NVarChar(36), [infeed].[Id])) LIKE N'293AE%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [InfeedAdvicePositionDTO]

