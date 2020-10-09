BeforeExecute
-- SqlCe

DROP TABLE [xxPatient21]

BeforeExecute
-- SqlCe

CREATE TABLE [xxPatient21]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient21] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient21]
SET
	[xxPatient21].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient21].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient21]
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
	[xxPatient21]
SET
	[xxPatient21].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient21].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient21]
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
	[xxPatient21] [t1]

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient21]
SET
	[xxPatient21].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient21].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient21]
SET
	[xxPatient21].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient21].[PersonID] = @PersonID

BeforeExecute
-- SqlCe

SELECT 
	Count(*)
FROM
	[xxPatient21] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [xxPatient21]

