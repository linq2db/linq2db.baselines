-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @TimeStamp VarChar(27) -- AnsiString
SET     @TimeStamp = '2020-02-29 17:54:55.1231234'

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

