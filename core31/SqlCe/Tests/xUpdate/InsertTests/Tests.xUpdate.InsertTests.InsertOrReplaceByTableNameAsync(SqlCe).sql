BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [xxPatient12]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [xxPatient12]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient12] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient12]
SET
	[xxPatient12].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient12]
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
	[xxPatient12]
SET
	[xxPatient12].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient12]
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
	Count(*)
FROM
	[xxPatient12] [t1]

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient12]
SET
	[xxPatient12].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient12]
SET
	[xxPatient12].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient12] [t1]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [xxPatient12]

