-- SqlServer.SA SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[databaseName],
	[t1].[Name],
	[t1].[Name_1],
	IIF([t1].[Type_1] = N'V', 1, 0),
	ISNULL(CAST([ep_1].[value] AS NVarChar(Max)), N''),
	IIF([t1].[Name] = N'dbo', 1, 0)
FROM
	(
		SELECT
			DB_NAME() as [databaseName],
			[a_Schema_1].[name] as [Name],
			[o].[name] as [Name_1],
			[o].[type] as [Type_1],
			[o].[object_id]
		FROM
			[sys].[objects] [o]
				INNER JOIN [sys].[schemas] [a_Schema] ON [o].[schema_id] = [a_Schema].[schema_id]
				INNER JOIN [sys].[schemas] [a_Schema_1] ON [o].[schema_id] = [a_Schema_1].[schema_id]
		WHERE
			[o].[is_ms_shipped] = 0 AND [o].[type] IN (N'U', N'V') AND
			NOT EXISTS(
				SELECT
					*
				FROM
					[sys].[extended_properties] [ep]
				WHERE
					[ep].[major_id] = [o].[object_id] AND
					[ep].[minor_id] = 0 AND
					[ep].[class] = 1 AND
					[ep].[name] = N'microsoft_database_tools_support'
			)
	) [t1]
		LEFT JOIN [sys].[extended_properties] [ep_1] ON [ep_1].[major_id] = [t1].[object_id] AND [ep_1].[minor_id] = 0 AND [ep_1].[class] = 1 AND [ep_1].[name] = N'MS_Description'

-- SqlServer.SA SqlServer.2019

SELECT
	DB_NAME() COLLATE DATABASE_DEFAULT + N'.' + [a_Schema_1].[name] + N'.' + [a_ParentTable].[name],
	[kc].[name],
	[a_Column].[name],
	[ic].[key_ordinal]
FROM
	[sys].[key_constraints] [kc]
		INNER JOIN [sys].[schemas] [a_Schema] ON [kc].[schema_id] = [a_Schema].[schema_id]
		INNER JOIN [sys].[tables] [a_ParentTable] ON [kc].[parent_object_id] = [a_ParentTable].[object_id]
		INNER JOIN [sys].[schemas] [a_Schema_1] ON [kc].[schema_id] = [a_Schema_1].[schema_id]
		INNER JOIN [sys].[index_columns] [ic] ON [kc].[parent_object_id] = [ic].[object_id] AND [kc].[unique_index_id] = [ic].[index_id]
		INNER JOIN [sys].[columns] [a_Column] ON [ic].[object_id] = [a_Column].[object_id] AND [ic].[column_id] = [a_Column].[column_id]
WHERE
	[kc].[is_ms_shipped] = 0 AND [kc].[type] = N'PK' AND
	NOT EXISTS(
		SELECT
			*
		FROM
			[sys].[extended_properties] [ep]
		WHERE
			[ep].[major_id] = [a_ParentTable].[object_id] AND
			[ep].[minor_id] = 0 AND
			[ep].[class] = 1 AND
			[ep].[name] = N'microsoft_database_tools_support'
	)

-- SqlServer.SA SqlServer.2019

SELECT
	DB_NAME() COLLATE DATABASE_DEFAULT + N'.' + [a_Schema_1].[name] + N'.' + [a_Object_1].[name],
	[c_1].[name],
	[c_1].[is_nullable],
	COLUMNPROPERTY([c_1].[object_id], [c_1].[name], 'Ordinal'),
	ISNULL(TYPE_NAME(IIF([c_1].[user_type_id] = 255, [c_1].[user_type_id], [c_1].[system_type_id])), [a_Type].[name]),
	COLUMNPROPERTY([c_1].[object_id], [c_1].[name], 'CharMaxLen'),
	CASE
		WHEN [c_1].[system_type_id] IN (48, 52, 56, 59, 60, 62, 106, 108, 122, 127)
			THEN [c_1].[precision]
		WHEN [c_1].[system_type_id] IN (40, 41, 42, 43, 58, 61) THEN ODBCSCALE([c_1].[system_type_id], [c_1].[scale])
		ELSE NULL
	END,
	IIF([c_1].[system_type_id] IN (40, 41, 42, 43, 58, 61), NULL, ODBCSCALE([c_1].[system_type_id], [c_1].[scale])),
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N''),
	[c_1].[is_identity],
	IIF([c_1].[is_computed] = 1 OR [c_1].[generated_always_type] <> 0 OR [a_Table].[object_id] IS NOT NULL AND [a_Table].[temporal_type] = 1, 1, 0)
FROM
	[sys].[columns] [c_1]
		INNER JOIN [sys].[objects] [a_Object] ON [c_1].[object_id] = [a_Object].[object_id]
		INNER JOIN [sys].[objects] [a_Object_1] ON [c_1].[object_id] = [a_Object_1].[object_id]
		INNER JOIN [sys].[schemas] [a_Schema] ON [a_Object_1].[schema_id] = [a_Schema].[schema_id]
		INNER JOIN [sys].[schemas] [a_Schema_1] ON [a_Object_1].[schema_id] = [a_Schema_1].[schema_id]
		LEFT JOIN [sys].[tables] [a_Table] ON [c_1].[object_id] = [a_Table].[object_id]
		LEFT JOIN [sys].[types] [a_Type] ON [c_1].[user_type_id] = [a_Type].[user_type_id]
		LEFT JOIN [sys].[extended_properties] [ep] ON [ep].[major_id] = [c_1].[object_id] AND [ep].[minor_id] = [c_1].[column_id] AND [ep].[class] = 1 AND [ep].[name] = N'MS_Description'
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[sys].[extended_properties] [ep_1]
		WHERE
			[ep_1].[major_id] = [c_1].[object_id] AND
			[ep_1].[minor_id] = 0 AND
			[ep_1].[class] = 1 AND
			[ep_1].[name] = N'microsoft_database_tools_support'
	)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Name_4],
	[t1].[Ordinal],
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[ThisColumn],
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name_2] + N'.' + [t1].[Name_3],
	[t1].[OtherColumn]
FROM
	(
		SELECT
			DB_NAME() as [databaseName],
			[a_Schema].[name] as [Name],
			[a_ThisTable].[name] as [Name_1],
			[a_Schema_1].[name] as [Name_2],
			[a_OtherTable].[name] as [Name_3],
			[a_ForeignKey].[name] as [Name_4],
			[fkc].[constraint_column_id] as [Ordinal],
			[a_ThisColumn].[name] as [ThisColumn],
			[a_OtherColumn].[name] as [OtherColumn]
		FROM
			[sys].[foreign_key_columns] [fkc]
				INNER JOIN [sys].[foreign_keys] [a_ForeignKey] ON [fkc].[constraint_object_id] = [a_ForeignKey].[object_id]
				INNER JOIN [sys].[tables] [a_ThisTable] ON [fkc].[parent_object_id] = [a_ThisTable].[object_id]
				INNER JOIN [sys].[schemas] [a_Schema] ON [a_ThisTable].[schema_id] = [a_Schema].[schema_id]
				INNER JOIN [sys].[columns] [a_ThisColumn] ON [fkc].[parent_object_id] = [a_ThisColumn].[object_id] AND [fkc].[parent_column_id] = [a_ThisColumn].[column_id]
				INNER JOIN [sys].[tables] [a_OtherTable] ON [fkc].[referenced_object_id] = [a_OtherTable].[object_id]
				INNER JOIN [sys].[schemas] [a_Schema_1] ON [a_OtherTable].[schema_id] = [a_Schema_1].[schema_id]
				INNER JOIN [sys].[columns] [a_OtherColumn] ON [fkc].[referenced_object_id] = [a_OtherColumn].[object_id] AND [fkc].[referenced_column_id] = [a_OtherColumn].[column_id]
	) [t1]

-- SqlServer.SA SqlServer.2019

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

-- SqlServer.SA SqlServer.2019

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

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[QueryProcMultipleParameters] @input, @output1, @output2, @output3'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int, @output3 int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[ExecuteProcIntParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[ExecuteProcStringParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_SelectByKey] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_SelectByKeyLowercase] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_SelectListByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_Insert] @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_Insert_OutputParameter] @FirstName, @LastName, @MiddleName, @Gender, @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1), @PersonID int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_Update] @PersonID, @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int, @FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Person_Delete] @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Patient_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Patient_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[VariableResults] @ReturnFullRow'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ReturnFullRow bit'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataSA].[dbo].[VariableResults]

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[OutRefTest] @ID, @outputID, @inputOutputID, @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ID int, @outputID int, @inputOutputID int, @str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[OutRefEnumTest] @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019

EXEC('SELECT * FROM [TestDataSA].[dbo].[GetParentByID](NULL)')

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[SelectImplicitColumn] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[DuplicateColumnNames] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[AddIssue792Record] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[TableTypeTestProc] @table'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@table [dbo].[TestTableType]'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataSA].[dbo].[TableTypeTestProc]

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[TestSchema].[TestProcedure] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019

EXEC('SELECT * FROM [TestDataSA].[TestSchema].[SchemaTableFunction](NULL)')

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[PersonSearch] @nameFilter'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@nameFilter nvarchar(512)'

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataSA].[dbo].[PersonSearch]

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[Issue1897] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.SA SqlServer.2019

EXEC('SELECT * FROM [TestDataSA].[dbo].[Issue1921]()')

-- SqlServer.SA SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataSA].[dbo].[QueryProcParameters] @input, @output1, @output2'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int'

sp_describe_first_result_set

RollbackTransaction
