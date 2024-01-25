BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NULL)
	CREATE TABLE [InfeedAdvicePositionDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower([infeed].[Id]) LIKE N'%7f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower([infeed].[Id]) LIKE N'193ae%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower([infeed].[Id]) LIKE N'%8f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower([infeed].[Id]) LIKE N'293ae%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

