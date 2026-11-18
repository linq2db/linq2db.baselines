-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Coalesce([t].[Code], '') || Coalesce([t].[Title], '')
FROM
	[PrefixedCodeWithTitle] [t]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN @Code IN (
			SELECT
				Coalesce([t].[Code], '') || Coalesce([t].[Title], '')
			FROM
				[PrefixedCodeWithTitle] [t]
		)
			THEN 1
		ELSE 0
	END

