﻿BeforeExecute
--  SQLite.Classic SQLite
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar(33) -- AnsiString
SET     @ColumnDTO = '0160-05-06T18:13:59.154000 +00:00'
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
--  SQLite.Classic SQLite
DECLARE @dto VarChar(33) -- AnsiString
SET     @dto = '0160-05-06T18:13:59.154000 +00:00'

SELECT
	COUNT(*)
FROM
	[Issue4371Table] [r]
WHERE
	[r].[ColumnDTO] = @dto

