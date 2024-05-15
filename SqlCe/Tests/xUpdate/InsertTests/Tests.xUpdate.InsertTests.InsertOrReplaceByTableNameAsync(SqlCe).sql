BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [xxPatient]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [xxPatient]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[xxPatient] [t1]

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[xxPatient] [t1]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [xxPatient]

