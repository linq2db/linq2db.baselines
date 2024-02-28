BeforeExecute
-- SQLite.Classic SQLite
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%' || Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace('[', '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]') || '%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%' || Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace('[', '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]') || '%' ESCAPE '~'

