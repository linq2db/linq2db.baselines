BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
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

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(LEN([Patient].[Diagnosis] + '.') - 1 + @i AS NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	'abc'
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(LEN([Patient].[Diagnosis] + '.') - 1 + @i AS NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(LEN([Patient].[Diagnosis] + '.') - 1 + @i AS NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

