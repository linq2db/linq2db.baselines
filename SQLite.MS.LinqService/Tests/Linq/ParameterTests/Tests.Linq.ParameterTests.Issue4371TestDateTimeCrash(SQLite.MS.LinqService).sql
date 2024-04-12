﻿BeforeExecute
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
DECLARE @ColumnDT VarChar(23) -- AnsiString
SET     @ColumnDT = '0160-05-06 18:13:59.154'
DECLARE @ColumnDTO VarChar -- AnsiString
SET     @ColumnDTO = NULL
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
DECLARE @dt VarChar(23) -- AnsiString
SET     @dt = '0160-05-06 18:13:59.154'

SELECT
	Count(*)
FROM
	[Issue4371Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[ColumnDT]) = strftime('%Y-%m-%d %H:%M:%f', @dt)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table]

