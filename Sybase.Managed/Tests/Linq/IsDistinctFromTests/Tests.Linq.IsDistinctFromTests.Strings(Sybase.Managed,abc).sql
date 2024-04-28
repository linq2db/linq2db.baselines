BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NULL)
	EXECUTE('
		CREATE TABLE [Src]
		(
			[Int]            Int           NOT NULL,
			[NullableInt]    Int               NULL,
			[String]         NVarChar(255)     NULL,
			[NullableString] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
SELECT 2,2,'abc','abc' UNION ALL
SELECT 3,NULL,'def',NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value UniVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value UniVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value UniVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value UniVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

