﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4371Table]
(
	[ColumnDO]  VarChar     NULL,
	[ColumnDT]  VarChar     NULL,
	[ColumnDTO] VarChar     NULL,
	[ColumnTS]  VarChar     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnDO VarChar -- AnsiString
SET     @ColumnDO = '2020-02-29'
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar -- AnsiString
SET     @ColumnDTO = NULL
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
-- SQLite.MS SQLite
DECLARE @dt VarChar -- AnsiString
SET     @dt = '2020-02-29'

SELECT
	Count(*)
FROM
	[Issue4371Table] [r]
WHERE
	Date([r].[ColumnDO]) = Date(@dt)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table]

