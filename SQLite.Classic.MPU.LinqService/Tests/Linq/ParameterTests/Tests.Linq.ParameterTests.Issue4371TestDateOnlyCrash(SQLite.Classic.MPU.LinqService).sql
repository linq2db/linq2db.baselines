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
DECLARE @ColumnDO VarChar(10) -- AnsiString
SET     @ColumnDO = '0160-05-06'
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @dt VarChar(10) -- AnsiString
SET     @dt = '0160-05-06'

SELECT
	Count(*)
FROM
	[Issue4371Table] [r]
WHERE
	Date([r].[ColumnDO]) = Date(@dt)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table]

