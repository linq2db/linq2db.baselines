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
	Lower(Convert(NVarChar(36), [infeed].[Id]))
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Convert(NVarChar(36), [infeed].[Id])) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Convert(NVarChar(36), [infeed].[Id])) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Convert(NVarChar(36), [infeed].[Id])) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower(Lower(Convert(NVarChar(36), [infeed].[Id]))) LIKE '293ae%' ESCAPE '~'

