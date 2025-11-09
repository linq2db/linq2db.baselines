-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient].[PersonID] = @PersonID

-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient].[PersonID] = @PersonID

-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[xxPatient] [t1]

-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient].[PersonID] = @PersonID

-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient].[PersonID] = @PersonID

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[xxPatient] [t1]

