-- SqlServer.SA.MS SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[databaseName],
	[t1].[Name],
	[t1].[Name_1],
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N''),
	[t1].[IsFunction],
	IIF([t1].[Name] = N'dbo', 1, 0)
FROM
	(
		SELECT
			DB_NAME() as [databaseName],
			[a_Schema].[name] as [Name],
			[o].[name] as [Name_1],
			[o].[type] as [IsFunction],
			[o].[object_id]
		FROM
			[sys].[objects] [o]
				INNER JOIN [sys].[schemas] [a_Schema] ON [o].[schema_id] = [a_Schema].[schema_id]
		WHERE
			[o].[is_ms_shipped] = 0 AND [o].[type] IN (N'P', N'FN', N'TF', N'IF', N'AF', N'FT', N'IS', N'PC', N'FS')
	) [t1]
		LEFT JOIN [sys].[extended_properties] [ep] ON [ep].[major_id] = [t1].[object_id] AND [ep].[minor_id] = 0 AND [ep].[class] = 1 AND [ep].[name] = N'MS_Description'

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[ParameterId],
	[t1].[Name_3],
	ISNULL(TYPE_NAME(IIF([t1].[UserTypeId] = 255, [t1].[UserTypeId], [t1].[SystemTypeId])), [t1].[Name_2]),
	COLUMNPROPERTY([t1].[ObjectId], [t1].[Name_3], 'CharMaxLen'),
	CASE
		WHEN [t1].[SystemTypeId] IN (48, 52, 56, 59, 60, 62, 106, 108, 122, 127)
			THEN [t1].[Precision_1]
		WHEN [t1].[SystemTypeId] IN (40, 41, 42, 43, 58, 61) THEN ODBCSCALE([t1].[SystemTypeId], [t1].[Scale_1])
		ELSE NULL
	END,
	IIF([t1].[SystemTypeId] IN (40, 41, 42, 43, 58, 61), NULL, ODBCSCALE([t1].[SystemTypeId], [t1].[Scale_1])),
	IIF([t1].[ParameterId] = 0 OR [t1].[is_output] = 1, 1, 0),
	IIF([t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL, [t1].[databaseName], NULL),
	IIF([t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL, [t1].[Name_4], NULL),
	IIF([t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL, [t1].[Name_2], NULL),
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N'')
FROM
	(
		SELECT
			DB_NAME() as [databaseName],
			[a_Schema].[name] as [Name],
			[a_Object].[name] as [Name_1],
			[p].[user_type_id] as [UserTypeId],
			[p].[system_type_id] as [SystemTypeId],
			[a_Type].[name] as [Name_2],
			[p].[object_id] as [ObjectId],
			[p].[name] as [Name_3],
			[p].[precision] as [Precision_1],
			[p].[scale] as [Scale_1],
			[p].[parameter_id] as [ParameterId],
			[a_Type].[schema_id] as [SchemaId],
			[a_Schema_1].[name] as [Name_4],
			[p].[is_output]
		FROM
			[sys].[parameters] [p]
				INNER JOIN [sys].[objects] [a_Object] ON [p].[object_id] = [a_Object].[object_id]
				INNER JOIN [sys].[schemas] [a_Schema] ON [a_Object].[schema_id] = [a_Schema].[schema_id]
				LEFT JOIN [sys].[types] [a_Type] ON [p].[user_type_id] = [a_Type].[user_type_id]
				LEFT JOIN [sys].[schemas] [a_Schema_1] ON [a_Type].[schema_id] = [a_Schema_1].[schema_id]
		WHERE
			[a_Object].[is_ms_shipped] = 0 AND [a_Object].[type] IN (N'P', N'FN', N'TF', N'IF', N'AF', N'FT', N'IS', N'PC', N'FS')
	) [t1]
		LEFT JOIN [sys].[extended_properties] [ep] ON [ep].[major_id] = [t1].[ObjectId] AND [ep].[minor_id] = [t1].[ParameterId] AND [ep].[class] = 2 AND [ep].[name] = N'MS_Description'

-- SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0
DECLARE @output3 Int -- Int32
SET     @output3 = 0

[TestDataMSSA].[dbo].[QueryProcMultipleParameters]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMSSA].[dbo].[ExecuteProcIntParameters]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMSSA].[dbo].[ExecuteProcStringParameters]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMSSA].[dbo].[Person_SelectByKey]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMSSA].[dbo].[Person_SelectByKeyLowercase]

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[Person_SelectAll]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMSSA].[dbo].[Person_SelectByName]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMSSA].[dbo].[Person_SelectListByName]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestDataMSSA].[dbo].[Person_Insert]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestDataMSSA].[dbo].[Person_Insert_OutputParameter]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestDataMSSA].[dbo].[Person_Update]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestDataMSSA].[dbo].[Person_Delete]

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[Patient_SelectAll]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMSSA].[dbo].[Patient_SelectByName]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataMSSA].[dbo].[VariableResults]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @outputID Int -- Int32
SET     @outputID = 0
DECLARE @inputOutputID Int -- Int32
SET     @inputOutputID = 0
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestDataMSSA].[dbo].[OutRefTest]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestDataMSSA].[dbo].[OutRefEnumTest]

-- SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[GetParentByID](NULL)')

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[SelectImplicitColumn]

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[DuplicateColumnNames]

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[AddIssue792Record]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataMSSA].[dbo].[TableTypeTestProc]

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[TestSchema].[TestProcedure]

-- SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[TestSchema].[SchemaTableFunction](NULL)')

-- SqlServer.SA.MS SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataMSSA].[dbo].[PersonSearch]

-- SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[Issue1897]

-- SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[Issue1921]()')

-- SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestDataMSSA].[dbo].[QueryProcParameters]

RollbackTransaction
-- SqlServer.SA.MS SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[databaseName],
	[t1].[Name],
	[t1].[Name_1],
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N''),
	[t1].[IsFunction],
	IIF([t1].[Name] = N'dbo', 1, 0)
FROM
	(
		SELECT
			DB_NAME() as [databaseName],
			[a_Schema].[name] as [Name],
			[o].[name] as [Name_1],
			[o].[type] as [IsFunction],
			[o].[object_id]
		FROM
			[sys].[objects] [o]
				INNER JOIN [sys].[schemas] [a_Schema] ON [o].[schema_id] = [a_Schema].[schema_id]
		WHERE
			[o].[is_ms_shipped] = 0 AND [o].[type] IN (N'P', N'FN', N'TF', N'IF', N'AF', N'FT', N'IS', N'PC', N'FS')
	) [t1]
		LEFT JOIN [sys].[extended_properties] [ep] ON [ep].[major_id] = [t1].[object_id] AND [ep].[minor_id] = 0 AND [ep].[class] = 1 AND [ep].[name] = N'MS_Description'

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[ParameterId],
	[t1].[Name_3],
	ISNULL(TYPE_NAME(IIF([t1].[UserTypeId] = 255, [t1].[UserTypeId], [t1].[SystemTypeId])), [t1].[Name_2]),
	COLUMNPROPERTY([t1].[ObjectId], [t1].[Name_3], 'CharMaxLen'),
	CASE
		WHEN [t1].[SystemTypeId] IN (48, 52, 56, 59, 60, 62, 106, 108, 122, 127)
			THEN [t1].[Precision_1]
		WHEN [t1].[SystemTypeId] IN (40, 41, 42, 43, 58, 61) THEN ODBCSCALE([t1].[SystemTypeId], [t1].[Scale_1])
		ELSE NULL
	END,
	IIF([t1].[SystemTypeId] IN (40, 41, 42, 43, 58, 61), NULL, ODBCSCALE([t1].[SystemTypeId], [t1].[Scale_1])),
	IIF([t1].[ParameterId] = 0 OR [t1].[is_output] = 1, 1, 0),
	IIF([t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL, [t1].[databaseName], NULL),
	IIF([t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL, [t1].[Name_4], NULL),
	IIF([t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL, [t1].[Name_2], NULL),
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N'')
FROM
	(
		SELECT
			DB_NAME() as [databaseName],
			[a_Schema].[name] as [Name],
			[a_Object].[name] as [Name_1],
			[p].[user_type_id] as [UserTypeId],
			[p].[system_type_id] as [SystemTypeId],
			[a_Type].[name] as [Name_2],
			[p].[object_id] as [ObjectId],
			[p].[name] as [Name_3],
			[p].[precision] as [Precision_1],
			[p].[scale] as [Scale_1],
			[p].[parameter_id] as [ParameterId],
			[a_Type].[schema_id] as [SchemaId],
			[a_Schema_1].[name] as [Name_4],
			[p].[is_output]
		FROM
			[sys].[parameters] [p]
				INNER JOIN [sys].[objects] [a_Object] ON [p].[object_id] = [a_Object].[object_id]
				INNER JOIN [sys].[schemas] [a_Schema] ON [a_Object].[schema_id] = [a_Schema].[schema_id]
				LEFT JOIN [sys].[types] [a_Type] ON [p].[user_type_id] = [a_Type].[user_type_id]
				LEFT JOIN [sys].[schemas] [a_Schema_1] ON [a_Type].[schema_id] = [a_Schema_1].[schema_id]
		WHERE
			[a_Object].[is_ms_shipped] = 0 AND [a_Object].[type] IN (N'P', N'FN', N'TF', N'IF', N'AF', N'FT', N'IS', N'PC', N'FS')
	) [t1]
		LEFT JOIN [sys].[extended_properties] [ep] ON [ep].[major_id] = [t1].[ObjectId] AND [ep].[minor_id] = [t1].[ParameterId] AND [ep].[class] = 2 AND [ep].[name] = N'MS_Description'

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[QueryProcMultipleParameters] @input, @output1, @output2, @output3'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int, @output3 int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[ExecuteProcIntParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[ExecuteProcStringParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectByKey] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectByKeyLowercase] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectListByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Insert] @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Insert_OutputParameter] @FirstName, @LastName, @MiddleName, @Gender, @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1), @PersonID int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Update] @PersonID, @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int, @FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Delete] @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Patient_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Patient_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[VariableResults] @ReturnFullRow'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ReturnFullRow bit'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataMSSA].[dbo].[VariableResults]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[OutRefTest] @ID, @outputID, @inputOutputID, @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ID int, @outputID int, @inputOutputID int, @str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[OutRefEnumTest] @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[GetParentByID](NULL)')

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[SelectImplicitColumn] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[DuplicateColumnNames] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[AddIssue792Record] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[TableTypeTestProc] @table'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@table [dbo].[TestTableType]'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataMSSA].[dbo].[TableTypeTestProc]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[TestSchema].[TestProcedure] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[TestSchema].[SchemaTableFunction](NULL)')

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[PersonSearch] @nameFilter'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@nameFilter nvarchar(512)'

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataMSSA].[dbo].[PersonSearch]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Issue1897] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[Issue1921]()')

-- SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[QueryProcParameters] @input, @output1, @output2'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int'

sp_describe_first_result_set

RollbackTransaction
