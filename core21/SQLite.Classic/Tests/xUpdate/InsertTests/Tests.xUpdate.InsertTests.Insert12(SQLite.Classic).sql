﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	'LastName',
	@Gender
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 4

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > @id

