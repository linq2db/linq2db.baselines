﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [xxPatient]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [xxPatient]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarWChar(4) -- String
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarWChar(4) -- String
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
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [xxPatient]

