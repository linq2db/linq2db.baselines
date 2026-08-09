-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p AND [r].[Grace] <= @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 9000000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @Ticks OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 899

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 899

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 899

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p AND [r].[Grace] <= @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 8995000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @Ticks OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] = @p AND [r].[Grace] = @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 9000000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @p OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] IS NOT NULL
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 901

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 901

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 901
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] = @p AND [r].[Grace] = @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 9005000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @p OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

