-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> @value

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = @value

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value)

