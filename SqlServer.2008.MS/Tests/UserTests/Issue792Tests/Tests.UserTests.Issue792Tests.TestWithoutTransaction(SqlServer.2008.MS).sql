-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.2008.MS SqlServer.2008

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

-- SqlServer.2008.MS SqlServer.2008

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

-- SqlServer.2008.MS SqlServer.2008

SELECT * FROM [TestDataMS].[dbo].[GetParentByID](NULL)

-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[SelectImplicitColumn]

-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[DuplicateColumnNames]

-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[AddIssue792Record]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataMS].[dbo].[TableTypeTestProc]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataMS].[dbo].[PersonSearch]

-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[Issue1897]

-- SqlServer.2008.MS SqlServer.2008

SELECT * FROM [TestDataMS].[dbo].[Issue1921]()

-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestDataMS].[dbo].[QueryProcParameters]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0
DECLARE @output3 Int -- Int32
SET     @output3 = 0

[TestDataMS].[dbo].[QueryProcMultipleParameters]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMS].[dbo].[ExecuteProcIntParameters]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMS].[dbo].[ExecuteProcStringParameters]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMS].[dbo].[Person_SelectByKey]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMS].[dbo].[Person_SelectByKeyLowercase]

-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[Person_SelectAll]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMS].[dbo].[Person_SelectByName]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMS].[dbo].[Person_SelectListByName]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestDataMS].[dbo].[Person_Insert]

-- SqlServer.2008.MS SqlServer.2008
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

[TestDataMS].[dbo].[Person_Insert_OutputParameter]

-- SqlServer.2008.MS SqlServer.2008
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

[TestDataMS].[dbo].[Person_Update]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestDataMS].[dbo].[Person_Delete]

-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[Patient_SelectAll]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMS].[dbo].[Patient_SelectByName]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataMS].[dbo].[VariableResults]

-- SqlServer.2008.MS SqlServer.2008
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

[TestDataMS].[dbo].[OutRefTest]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestDataMS].[dbo].[OutRefEnumTest]

RollbackTransaction
-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]

-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = N'issue792'

