BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4371Table]
(
	[ColumnDT]  VarChar     NULL,
	[ColumnDTO] VarChar     NULL,
	[ColumnTS]  VarChar     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar(33) -- AnsiString
SET     @ColumnDTO = '2020-02-29T17:54:55.123123 +00:40'
DECLARE @ColumnTS VarChar -- AnsiString
SET     @ColumnTS = NULL

INSERT INTO [Issue4371Table]
(
	[ColumnDT],
	[ColumnDTO],
	[ColumnTS]
)
VALUES
(
	@ColumnDT,
	@ColumnDTO,
	@ColumnTS
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @dto VarChar(33) -- AnsiString
SET     @dto = '2020-02-29T17:54:55.123123 +00:40'

SELECT
	COUNT(*)
FROM
	[Issue4371Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[ColumnDTO]) = strftime('%Y-%m-%d %H:%M:%f', @dto)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table]

