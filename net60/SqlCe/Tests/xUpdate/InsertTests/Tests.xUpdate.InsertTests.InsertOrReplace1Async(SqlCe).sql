BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (@take)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

DELETE FROM
	[Patient]
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @id

