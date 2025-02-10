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

SELECT TOP (1)
	LOWER(CAST([infeed].[Id] AS char(36)))
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LOWER(CAST([infeed].[Id] AS char(36))) LIKE N'%7f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LOWER(CAST([infeed].[Id] AS char(36))) LIKE N'193ae%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LOWER(CAST([infeed].[Id] AS char(36))) LIKE N'%8f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(LOWER(CAST([infeed].[Id] AS char(36)))) LIKE N'293ae%' ESCAPE N'~'

