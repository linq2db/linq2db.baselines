-- SQLite.MS SQLite
DECLARE @p1  -- Int64
SET     @p1 = 72002430000000
DECLARE @p2  -- Int64
SET     @p2 = 72002430000000

INSERT INTO [Common_Language]
(
	[LanguageID],
	[TimeSpan],
	[TimeSpanNull]
)
VALUES
('en',@p1,@p2)

