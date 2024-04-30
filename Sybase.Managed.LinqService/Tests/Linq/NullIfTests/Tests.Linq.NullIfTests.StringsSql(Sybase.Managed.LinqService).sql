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
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = 2
DECLARE @String UniVarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString UniVarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Int Integer -- Int32
SET     @Int = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String UniVarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString UniVarChar -- String
SET     @NullableString = NULL

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[String], 'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[String], 'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[String], NULL)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[NullableString], 'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[NullableString], 'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[NullableString], NULL)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

