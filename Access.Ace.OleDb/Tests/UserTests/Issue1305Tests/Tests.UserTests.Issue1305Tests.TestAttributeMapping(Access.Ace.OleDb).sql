BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ColumnOrderTest]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [ColumnOrderTest]
(
	[RecordID]       Int           NOT NULL,
	[EffectiveStart] DateTime      NOT NULL,
	[EffectiveEnd]   DateTime          NULL,
	[Key]            Int           NOT NULL,
	[Name]           NVarChar(255)     NULL,
	[Code]           NVarChar(255)     NULL,
	[Audit1ID]       Int           NOT NULL,
	[Audit2ID]       Int           NOT NULL,

	CONSTRAINT [PK_ColumnOrderTest] PRIMARY KEY CLUSTERED ([RecordID])
)

BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0

[AddIssue792Record]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @firstName LongVarWChar(50) -- String
SET     @firstName = ''
DECLARE @lastName LongVarWChar(50) -- String
SET     @lastName = ''

[Patient_SelectByName]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 0

[Person_Delete]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName LongVarWChar(50) -- String
SET     @FirstName = ''
DECLARE @MiddleName LongVarWChar(50) -- String
SET     @MiddleName = ''
DECLARE @LastName LongVarWChar(50) -- String
SET     @LastName = ''
DECLARE @Gender LongVarWChar(1) -- String
SET     @Gender = chr(0)

[Person_Insert]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0

[Person_SelectByKey]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @firstName LongVarWChar(50) -- String
SET     @firstName = ''
DECLARE @lastName LongVarWChar(50) -- String
SET     @lastName = ''

[Person_SelectByName]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @firstName LongVarWChar(50) -- String
SET     @firstName = ''
DECLARE @lastName LongVarWChar(50) -- String
SET     @lastName = ''

[Person_SelectListByName]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0
DECLARE @FirstName LongVarWChar(50) -- String
SET     @FirstName = ''
DECLARE @MiddleName LongVarWChar(50) -- String
SET     @MiddleName = ''
DECLARE @LastName LongVarWChar(50) -- String
SET     @LastName = ''
DECLARE @Gender LongVarWChar(1) -- String
SET     @Gender = chr(0)

[Person_Update]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

[ThisProcedureNotVisibleFromODBC]

BeforeExecute
RollbackTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ColumnOrderTest]

