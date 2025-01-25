BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @name VarWChar(4) -- String
SET     @name = 'test'
DECLARE @name_1 VarWChar(4) -- String
SET     @name_1 = 'test'
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 1
DECLARE @id_2 Integer -- Int32
SET     @id_2 = 1
DECLARE @name_2 VarWChar(4) -- String
SET     @name_2 = 'test'
DECLARE @name_3 VarWChar(4) -- String
SET     @name_3 = 'test'
DECLARE @id_3 Integer -- Int32
SET     @id_3 = 1

SELECT
	[m_1].[PersonID],
	[m_1].[FirstName],
	[m_1].[PersonID],
	[m_1].[LastName],
	[m_1].[MiddleName],
	[m_1].[Gender]
FROM
	[Person] [m_1]
WHERE
	([m_1].[PersonID] = @id AND [m_1].[LastName] <> @name OR [m_1].[FirstName] <> @name_1 AND [m_1].[PersonID] - 1 = @id_1) AND
	([m_1].[PersonID] = @id_2 AND [m_1].[LastName] <> @name_2 OR [m_1].[FirstName] <> @name_3 AND [m_1].[PersonID] - 1 = @id_3)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @name VarWChar(4) -- String
SET     @name = 'test'
DECLARE @name_1 VarWChar(4) -- String
SET     @name_1 = 'test'
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 1

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @id AND [x].[LastName] <> @name OR
	[x].[FirstName] <> @name_1 AND [x].[PersonID] - 1 = @id_1
GROUP BY
	[x].[PersonID]

