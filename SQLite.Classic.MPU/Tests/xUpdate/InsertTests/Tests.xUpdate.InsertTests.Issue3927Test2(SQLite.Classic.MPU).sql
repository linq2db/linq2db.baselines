BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3927Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3927Table]
(
	[SerialNumber] Char(11) NOT NULL,
	[PageNumber]   INTEGER  NOT NULL,

	CONSTRAINT [PK_Issue3927Table] PRIMARY KEY ([SerialNumber])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @pageNumber  -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@pageNumber
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3927Table]

