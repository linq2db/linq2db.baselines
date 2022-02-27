BeforeExecute
-- SqlCe

DROP TABLE [xxPatient22]

BeforeExecute
-- SqlCe

CREATE TABLE [xxPatient22]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient22] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient22]
SET
	[xxPatient22].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient22]
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
	[xxPatient22]
SET
	[xxPatient22].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient22]
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
	[xxPatient22] [t1]

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient22]
SET
	[xxPatient22].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SqlCe
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient22]
SET
	[xxPatient22].[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[xxPatient22] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [xxPatient22]

