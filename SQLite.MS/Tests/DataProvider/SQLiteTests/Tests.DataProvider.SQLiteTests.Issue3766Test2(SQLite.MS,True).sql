BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29T17:09:55.1231234+00:00'

INSERT INTO [Issue3766Table]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	0
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29T17:09:55.1231234+00:00'

UPDATE
	[Issue3766Table]
SET
	[Value] = 0
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [Issue3766Table].[Id]) = strftime('%Y-%m-%d %H:%M:%f', @Id)

