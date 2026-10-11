-- SQLite.MS SQLite
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15T12:00:00.1200000'
DECLARE @date NVarChar(255) -- String
SET     @date = '2026-09-15'

INSERT INTO [DateTimeContainsRow] ([Id], [Timestamp], [Date]) VALUES (1, @value, @date)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Timestamp  -- DateTime
SET     @Timestamp = '2026-09-16 12:00:00.000'
DECLARE @Date  -- Date
SET     @Date = '2026-09-16 00:00:00.000'

INSERT INTO [DateTimeContainsRow]
(
	[Id],
	[Timestamp],
	[Date]
)
VALUES
(
	@Id,
	@Timestamp,
	@Date
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Timestamp  -- DateTime
SET     @Timestamp = NULL
DECLARE @Date  -- Date
SET     @Date = NULL

INSERT INTO [DateTimeContainsRow]
(
	[Id],
	[Timestamp],
	[Date]
)
VALUES
(
	@Id,
	@Timestamp,
	@Date
)

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTimeContainsRow] [r]
WHERE
	(strftime('%Y-%m-%d %H:%M:%f', [r].[Timestamp]) IN (strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.120')) OR strftime('%Y-%m-%d %H:%M:%f', [r].[Timestamp]) IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTimeContainsRow] [r]
WHERE
	(strftime('%Y-%m-%d %H:%M:%f', [r].[Timestamp]) NOT IN (strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.120')) AND strftime('%Y-%m-%d %H:%M:%f', [r].[Timestamp]) IS NOT NULL)

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTimeContainsRow] [r]
WHERE
	(Date([r].[Date]) IN (Date('2026-09-15')) OR Date([r].[Date]) IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTimeContainsRow] [r]
WHERE
	(Date([r].[Date]) NOT IN (Date('2026-09-15')) AND Date([r].[Date]) IS NOT NULL)

