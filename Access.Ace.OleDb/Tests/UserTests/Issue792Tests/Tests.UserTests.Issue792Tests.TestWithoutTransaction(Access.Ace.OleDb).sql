-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0

[AddIssue792Record]

-- Access.Ace.OleDb AccessOleDb
DECLARE @firstName LongVarWChar(50) -- String
SET     @firstName = ''
DECLARE @lastName LongVarWChar(50) -- String
SET     @lastName = ''

[Patient_SelectByName]

-- Access.Ace.OleDb AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 0

[Person_Delete]

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

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0

[Person_SelectByKey]

-- Access.Ace.OleDb AccessOleDb
DECLARE @firstName LongVarWChar(50) -- String
SET     @firstName = ''
DECLARE @lastName LongVarWChar(50) -- String
SET     @lastName = ''

[Person_SelectByName]

-- Access.Ace.OleDb AccessOleDb
DECLARE @firstName LongVarWChar(50) -- String
SET     @firstName = ''
DECLARE @lastName LongVarWChar(50) -- String
SET     @lastName = ''

[Person_SelectListByName]

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

-- Access.Ace.OleDb AccessOleDb

[ThisProcedureNotVisibleFromODBC]

RollbackTransaction
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

