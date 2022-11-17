BeforeExecute
-- SQLite.MS SQLite
DECLARE @rank VarChar(19) -- AnsiString
SET     @rank = 'strange(''function")'

INSERT INTO [FTS5_TABLE]([FTS5_TABLE], rank) VALUES('rank', @rank)

