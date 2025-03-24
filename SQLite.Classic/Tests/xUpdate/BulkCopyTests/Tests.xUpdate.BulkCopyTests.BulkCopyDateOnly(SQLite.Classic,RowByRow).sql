﻿BeforeExecute
--  SQLite.Classic SQLite
DECLARE @Date VarChar(10) -- AnsiString
SET     @Date = '2021-01-01'

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
--  SQLite.Classic SQLite

SELECT
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]
LIMIT 2

