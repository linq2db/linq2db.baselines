BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [xxPatient11]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [xxPatient11]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient11] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient11] [t1]
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

INSERT INTO [xxPatient11]
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
	[xxPatient11] [t1]
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

INSERT INTO [xxPatient11]
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
	[xxPatient11] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient11] [t1]
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
	[xxPatient11] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [xxPatient11]

