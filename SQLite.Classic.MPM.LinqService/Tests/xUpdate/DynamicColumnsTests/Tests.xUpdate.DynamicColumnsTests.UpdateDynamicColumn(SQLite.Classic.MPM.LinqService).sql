BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(10) -- String
SET     @LastName = 'Limonadovy'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Johnny'

UPDATE
	[Person]
SET
	[FirstName] = @FirstName
WHERE
	[Person].[LastName] = 'Limonadovy'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

