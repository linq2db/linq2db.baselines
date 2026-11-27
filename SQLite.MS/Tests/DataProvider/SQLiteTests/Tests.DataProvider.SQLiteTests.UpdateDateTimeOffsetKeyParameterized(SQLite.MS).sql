-- SQLite.MS SQLite
DECLARE @Id Text -- DateTimeOffset
SET     @Id = '2020-02-29 17:09:55.123+00:00'
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO [DateTimeOffsetKeyTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 0
DECLARE @Id Text -- DateTimeOffset
SET     @Id = '2020-02-29 17:09:55.123+00:00'

UPDATE
	[DateTimeOffsetKeyTable]
SET
	[Value] = @Value
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [DateTimeOffsetKeyTable].[Id]) = strftime('%Y-%m-%d %H:%M:%f', @Id)

