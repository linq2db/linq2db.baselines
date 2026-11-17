-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS DISTINCT FROM @value

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS DISTINCT FROM @value

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT DISTINCT FROM @value

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT DISTINCT FROM @value

