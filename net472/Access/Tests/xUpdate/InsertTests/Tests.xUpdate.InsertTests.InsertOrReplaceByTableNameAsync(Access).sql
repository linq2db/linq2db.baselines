BeforeExecute
-- Access AccessOleDb (asynchronously)

DROP TABLE [xxPatient23]

BeforeExecute
-- Access AccessOleDb (asynchronously)

CREATE TABLE [xxPatient23]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient23] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient23] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient23]
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
-- Access AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient23] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient23]
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
-- Access AccessOleDb (asynchronously)

SELECT 
	Count(*)
FROM
	[xxPatient23] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient23] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient23] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT 
	Count(*)
FROM
	[xxPatient23] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)

DROP TABLE [xxPatient23]

