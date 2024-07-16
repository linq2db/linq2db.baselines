BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3927Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3927Table]
(
	[SerialNumber] Char(11) NOT NULL,
	[PageNumber]   INTEGER  NOT NULL,

	CONSTRAINT [PK_Issue3927Table] PRIMARY KEY ([SerialNumber])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @PageNumber  -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@PageNumber
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3927Table]

