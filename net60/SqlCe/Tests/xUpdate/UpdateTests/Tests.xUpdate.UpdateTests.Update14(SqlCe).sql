﻿BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
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
-- SqlCe
DECLARE @name NVarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Int -- Int32
SET     @idx = 4

UPDATE
	[Person]
SET
	[Person].[LastName] = Convert(NVarChar(11), LEN(REPLACE(@name,' ','.')) + @idx)
WHERE
	[Person].[FirstName] LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%' ESCAPE '~'

