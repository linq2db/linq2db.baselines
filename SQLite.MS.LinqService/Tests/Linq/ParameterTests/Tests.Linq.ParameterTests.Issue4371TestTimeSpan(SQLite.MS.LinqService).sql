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
DECLARE @ColumnDTO VarChar -- AnsiString
SET     @ColumnDTO = NULL
DECLARE @ColumnTS VarChar(12) -- AnsiString
SET     @ColumnTS = '17:54:55.123'

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
DECLARE @ts VarChar(12) -- AnsiString
SET     @ts = '17:54:55.123'

SELECT
	COUNT(*)
FROM
	[Issue4371Table] [r]
WHERE
	CAST([r].[ColumnTS] AS Time) = CAST(@ts AS Time)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table]

