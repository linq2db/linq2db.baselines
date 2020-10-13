BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe (asynchronously)

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
-- SqlCe (asynchronously)

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
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]) + @i)
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
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]) + @i)
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
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]) + @i)
WHERE
	[Patient].[PersonID] = @id

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

