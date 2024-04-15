﻿BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

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
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

