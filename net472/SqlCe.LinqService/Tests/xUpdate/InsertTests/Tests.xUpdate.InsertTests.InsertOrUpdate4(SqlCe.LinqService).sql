﻿BeforeExecute
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
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(3) -- String
SET     @diagnosis = 'abc'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	Convert(NVarChar(11), Len(@diagnosis))
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

DELETE FROM
	[Patient]
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @id

