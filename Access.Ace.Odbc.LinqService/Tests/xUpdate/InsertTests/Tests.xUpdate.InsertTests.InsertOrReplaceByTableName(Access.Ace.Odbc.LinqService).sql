BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [xxPatient]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [xxPatient]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [xxPatient]

