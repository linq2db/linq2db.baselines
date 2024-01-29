BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InfeedAdvicePositionDTO') IS NOT NULL)
	DROP TABLE [InfeedAdvicePositionDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InfeedAdvicePositionDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [InfeedAdvicePositionDTO]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Char(36) -- AnsiStringFixedLength
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
-- Sybase.Managed Sybase

SELECT TOP 1
	Upper(Convert(NVarChar(36), [infeed].[Id]))
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Upper(Convert(NVarChar(36), [infeed].[Id])) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Upper(Convert(NVarChar(36), [infeed].[Id])) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Upper(Convert(NVarChar(36), [infeed].[Id])) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Upper(Convert(NVarChar(36), [infeed].[Id]))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InfeedAdvicePositionDTO') IS NOT NULL)
	DROP TABLE [InfeedAdvicePositionDTO]

