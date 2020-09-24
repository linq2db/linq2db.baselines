BeforeExecute
-- Access AccessOleDb

DROP TABLE [xxPatient24]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [xxPatient24]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient24] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient24] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient24]
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
-- Access AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient24] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient24]
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
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[xxPatient24] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient24] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient24] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[xxPatient24] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [xxPatient24]

