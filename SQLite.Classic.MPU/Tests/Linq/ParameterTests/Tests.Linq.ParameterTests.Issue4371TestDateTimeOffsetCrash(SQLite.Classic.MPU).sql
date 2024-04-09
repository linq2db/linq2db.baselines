﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4371Table]
(
	[ColumnDO]  VarChar     NULL,
	[ColumnDT]  VarChar     NULL,
	[ColumnDTO] VarChar     NULL,
	[ColumnTS]  VarChar     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ColumnDO VarChar -- AnsiString
SET     @ColumnDO = NULL
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar(33) -- AnsiString
SET     @ColumnDTO = '0160-05-06T18:13:59.154000 +00:00'
DECLARE @ColumnTS VarChar -- AnsiString
SET     @ColumnTS = NULL

INSERT INTO [Issue4371Table]
(
	[ColumnDO],
	[ColumnDT],
	[ColumnDTO],
	[ColumnTS]
)
VALUES
(
	@ColumnDO,
	@ColumnDT,
	@ColumnDTO,
	@ColumnTS
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @dto VarChar(33) -- AnsiString
SET     @dto = '0160-05-06T18:13:59.154000 +00:00'

SELECT
	Count(*)
FROM
	[Issue4371Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[ColumnDTO]) = strftime('%Y-%m-%d %H:%M:%f', @dto)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table]

