BeforeExecute
-- SqlCe

DROP TABLE [xxPatient11]

BeforeExecute
-- SqlCe

CREATE TABLE [xxPatient11]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient11] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient11]
SET
	[xxPatient11].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient11].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient11]
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
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient11]
SET
	[xxPatient11].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient11].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient11]
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

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient11]
SET
	[xxPatient11].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient11].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient11]
SET
	[xxPatient11].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient11].[PersonID] = @PersonID

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [xxPatient11]

