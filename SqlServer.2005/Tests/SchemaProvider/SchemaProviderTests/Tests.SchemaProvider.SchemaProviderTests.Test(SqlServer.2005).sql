-- SqlServer.2005

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2005

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.2005

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[databaseName],
	[t1].[Name],
	[t1].[Name_1],
	CASE
		WHEN [t1].[Type_1] = N'V' THEN 1
		ELSE 0
	END,
	ISNULL(CAST([ep_1].[value] AS NVarChar(Max)), N''),
	CASE
		WHEN [t1].[Name] = N'dbo' THEN 1
		ELSE 0
	END
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

-- SqlServer.2005

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

-- SqlServer.2005

SELECT
	DB_NAME() COLLATE DATABASE_DEFAULT + N'.' + [a_Schema_1].[name] + N'.' + [a_Object_1].[name],
	[c_1].[name],
	[c_1].[is_nullable],
	COLUMNPROPERTY([c_1].[object_id], [c_1].[name], 'Ordinal'),
	ISNULL(TYPE_NAME(CASE
		WHEN [c_1].[user_type_id] = 255 THEN [c_1].[user_type_id]
		ELSE [c_1].[system_type_id]
	END), [a_Type].[name]),
	COLUMNPROPERTY([c_1].[object_id], [c_1].[name], 'CharMaxLen'),
	CASE
		WHEN [c_1].[system_type_id] IN (48, 52, 56, 59, 60, 62, 106, 108, 122, 127)
			THEN [c_1].[precision]
		WHEN [c_1].[system_type_id] IN (40, 41, 42, 43, 58, 61) THEN ODBCSCALE([c_1].[system_type_id], [c_1].[scale])
		ELSE NULL
	END,
	CASE
		WHEN [c_1].[system_type_id] IN (40, 41, 42, 43, 58, 61) THEN NULL
		ELSE ODBCSCALE([c_1].[system_type_id], [c_1].[scale])
	END,
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N''),
	[c_1].[is_identity],
	CASE
		WHEN [c_1].[is_computed] = 1 THEN 1
		ELSE 0
	END
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

-- SqlServer.2005

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

-- SqlServer.2005

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[databaseName],
	[t1].[Name],
	[t1].[Name_1],
	ISNULL(CAST([ep].[value] AS NVarChar(Max)), N''),
	[t1].[IsFunction],
	CASE
		WHEN [t1].[Name] = N'dbo' THEN 1
		ELSE 0
	END
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

-- SqlServer.2005

SELECT
	[t1].[databaseName] COLLATE DATABASE_DEFAULT + N'.' + [t1].[Name] + N'.' + [t1].[Name_1],
	[t1].[ParameterId],
	[t1].[Name_3],
	ISNULL(TYPE_NAME(CASE
		WHEN [t1].[UserTypeId] = 255 THEN [t1].[UserTypeId]
		ELSE [t1].[SystemTypeId]
	END), [t1].[Name_2]),
	COLUMNPROPERTY([t1].[ObjectId], [t1].[Name_3], 'CharMaxLen'),
	CASE
		WHEN [t1].[SystemTypeId] IN (48, 52, 56, 59, 60, 62, 106, 108, 122, 127)
			THEN [t1].[Precision_1]
		WHEN [t1].[SystemTypeId] IN (40, 41, 42, 43, 58, 61) THEN ODBCSCALE([t1].[SystemTypeId], [t1].[Scale_1])
		ELSE NULL
	END,
	CASE
		WHEN [t1].[SystemTypeId] IN (40, 41, 42, 43, 58, 61) THEN NULL
		ELSE ODBCSCALE([t1].[SystemTypeId], [t1].[Scale_1])
	END,
	CASE
		WHEN [t1].[ParameterId] = 0 OR [t1].[is_output] = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL THEN [t1].[databaseName]
		ELSE NULL
	END,
	CASE
		WHEN [t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL THEN [t1].[Name_4]
		ELSE NULL
	END,
	CASE
		WHEN [t1].[SchemaId] <> 4 OR [t1].[SchemaId] IS NULL THEN [t1].[Name_2]
		ELSE NULL
	END,
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

-- SqlServer.2005

SELECT * FROM [TestData].[dbo].[GetParentByID](NULL)

-- SqlServer.2005

[TestData].[dbo].[SelectImplicitColumn]

-- SqlServer.2005

[TestData].[dbo].[DuplicateColumnNames]

-- SqlServer.2005

[TestData].[dbo].[AddIssue792Record]

-- SqlServer.2005
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestData].[dbo].[PersonSearch]

-- SqlServer.2005

[TestData].[dbo].[Issue1897]

-- SqlServer.2005

SELECT * FROM [TestData].[dbo].[Issue1921]()

-- SqlServer.2005
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestData].[dbo].[QueryProcParameters]

-- SqlServer.2005
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0
DECLARE @output3 Int -- Int32
SET     @output3 = 0

[TestData].[dbo].[QueryProcMultipleParameters]

-- SqlServer.2005
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestData].[dbo].[ExecuteProcIntParameters]

-- SqlServer.2005
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestData].[dbo].[ExecuteProcStringParameters]

-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 0

[TestData].[dbo].[Person_SelectByKey]

-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 0

[TestData].[dbo].[Person_SelectByKeyLowercase]

-- SqlServer.2005

[TestData].[dbo].[Person_SelectAll]

-- SqlServer.2005
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestData].[dbo].[Person_SelectByName]

-- SqlServer.2005
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestData].[dbo].[Person_SelectListByName]

-- SqlServer.2005
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestData].[dbo].[Person_Insert]

-- SqlServer.2005
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

[TestData].[dbo].[Person_Insert_OutputParameter]

-- SqlServer.2005
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

[TestData].[dbo].[Person_Update]

-- SqlServer.2005
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestData].[dbo].[Person_Delete]

-- SqlServer.2005

[TestData].[dbo].[Patient_SelectAll]

-- SqlServer.2005
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestData].[dbo].[Patient_SelectByName]

-- SqlServer.2005
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestData].[dbo].[VariableResults]

-- SqlServer.2005
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

[TestData].[dbo].[OutRefTest]

-- SqlServer.2005
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestData].[dbo].[OutRefEnumTest]

RollbackTransaction
