-- SQLite.Classic SQLite
DECLARE @CharFld NChar -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]
LIMIT 1

