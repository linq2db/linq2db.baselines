BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [xxPatient21]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [xxPatient21]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient21] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient21] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient21] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[xxPatient21] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient21] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient21] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[xxPatient21] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [xxPatient21]

