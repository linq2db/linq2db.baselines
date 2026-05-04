-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29 17:09:55.123'
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [Issue3766Table] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29 17:09:55.123'
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [Issue3766Table] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

