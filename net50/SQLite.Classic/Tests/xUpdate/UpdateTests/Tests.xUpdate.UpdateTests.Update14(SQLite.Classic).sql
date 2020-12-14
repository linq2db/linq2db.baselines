﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @name NVarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx  -- Int32
SET     @idx = 4

UPDATE
	[Person]
SET
	[LastName] = Cast((Length(@name) + @idx) as NVarChar(11))
WHERE
	[Person].[FirstName] LIKE 'Update14%'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%'

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Update14%'

