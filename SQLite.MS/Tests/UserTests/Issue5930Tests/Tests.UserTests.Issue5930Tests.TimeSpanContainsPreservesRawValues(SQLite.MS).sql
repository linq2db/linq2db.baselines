-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Time
SET     @Value = 10:00:00
DECLARE @Nullable  -- Time
SET     @Nullable = 10:00:00

INSERT INTO [TimeContainsRow]
(
	[Id],
	[Value],
	[Nullable]
)
VALUES
(
	@Id,
	@Value,
	@Nullable
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Time
SET     @Value = 10:00:00.1234567
DECLARE @Nullable  -- Time
SET     @Nullable = 10:00:00.1234567

INSERT INTO [TimeContainsRow]
(
	[Id],
	[Value],
	[Nullable]
)
VALUES
(
	@Id,
	@Value,
	@Nullable
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value  -- Time
SET     @Value = 1.06:00:00
DECLARE @Nullable  -- Time
SET     @Nullable = 1.06:00:00

INSERT INTO [TimeContainsRow]
(
	[Id],
	[Value],
	[Nullable]
)
VALUES
(
	@Id,
	@Value,
	@Nullable
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value  -- Time
SET     @Value = -02:00:00
DECLARE @Nullable  -- Time
SET     @Nullable = -02:00:00

INSERT INTO [TimeContainsRow]
(
	[Id],
	[Value],
	[Nullable]
)
VALUES
(
	@Id,
	@Value,
	@Nullable
)

-- SQLite.MS SQLite
DECLARE @p1  -- Time
SET     @p1 = 10:00:00
DECLARE @p2  -- Time
SET     @p2 = 10:00:00
DECLARE @p3  -- Time
SET     @p3 = 10:00:00.1234567
DECLARE @p4  -- Time
SET     @p4 = 10:00:00.1234567
DECLARE @p5  -- Time
SET     @p5 = 1.06:00:00
DECLARE @p6  -- Time
SET     @p6 = 1.06:00:00
DECLARE @p7  -- Time
SET     @p7 = -02:00:00
DECLARE @p8  -- Time
SET     @p8 = -02:00:00

INSERT INTO [TimeContainsRow]
(
	[Id],
	[Value],
	[Nullable]
)
VALUES
(11,@p1,@p2),
(12,@p3,@p4),
(13,@p5,@p6),
(14,@p7,@p8)

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00:00
DECLARE @value_1  -- Time
SET     @value_1 = 10:00:00.1234567
DECLARE @value_2  -- Time
SET     @value_2 = 1.06:00:00
DECLARE @value_3  -- Time
SET     @value_3 = -02:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Nullable] IN (@value, @value_1, @value_2, @value_3)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Nullable] IN (@value)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	([r].[Nullable] NOT IN (@value) OR [r].[Nullable] IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 1

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 1

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] NOT IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00:00.1234567

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Nullable] IN (@value)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00:00.1234567

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	([r].[Nullable] NOT IN (@value) OR [r].[Nullable] IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 2

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 2

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] NOT IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 1.06:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Nullable] IN (@value)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 1.06:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	([r].[Nullable] NOT IN (@value) OR [r].[Nullable] IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 3

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 3

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] NOT IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = -02:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Nullable] IN (@value)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = -02:00:00

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	([r].[Nullable] NOT IN (@value) OR [r].[Nullable] IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 4

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 4

SELECT
	[r].[Id]
FROM
	[TimeContainsRow] [r]
WHERE
	[r].[Value] NOT IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeContainsRow] [r_1]
		WHERE
			[r_1].[Id] = @selectedId
	)
ORDER BY
	[r].[Id]

