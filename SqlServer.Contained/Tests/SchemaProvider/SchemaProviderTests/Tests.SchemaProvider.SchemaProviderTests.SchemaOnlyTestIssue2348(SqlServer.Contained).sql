-- SqlServer.Contained SqlServer.2019

select @@version

-- SqlServer.Contained SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.Contained SqlServer.2019

SELECT
					SPECIFIC_CATALOG COLLATE DATABASE_DEFAULT + '.' + SPECIFIC_SCHEMA + '.' + SPECIFIC_NAME as ProcedureID,
					SPECIFIC_CATALOG                                                                        as CatalogName,
					SPECIFIC_SCHEMA                                                                         as SchemaName,
					SPECIFIC_NAME                                                                           as ProcedureName,
					CASE WHEN ROUTINE_TYPE = 'FUNCTION'                         THEN 1 ELSE 0 END           as IsFunction,
					CASE WHEN ROUTINE_TYPE = 'FUNCTION' AND DATA_TYPE = 'TABLE' THEN 1 ELSE 0 END           as IsTableFunction,
					CASE WHEN EXISTS(SELECT * FROM sys.objects where name = SPECIFIC_NAME AND type='AF')
					                                                            THEN 1 ELSE 0 END           as IsAggregateFunction,
					CASE WHEN SPECIFIC_SCHEMA = 'dbo'                           THEN 1 ELSE 0 END           as IsDefaultSchema,
					ISNULL(CONVERT(varchar(8000), x.value), '')                                             as Description
				FROM
					INFORMATION_SCHEMA.ROUTINES
					LEFT JOIN sys.extended_properties x
						ON OBJECT_ID('[' + SPECIFIC_SCHEMA + '].[' + SPECIFIC_NAME + ']') = x.major_id AND
							x.name = 'MS_Description' AND x.class = 1
				ORDER BY SPECIFIC_CATALOG, SPECIFIC_SCHEMA, SPECIFIC_NAME

-- SqlServer.Contained SqlServer.2019

SELECT
					SPECIFIC_CATALOG COLLATE DATABASE_DEFAULT + '.' + SPECIFIC_SCHEMA + '.' + SPECIFIC_NAME as ProcedureID,
					ORDINAL_POSITION                                                                        as Ordinal,
					PARAMETER_MODE                                                                          as Mode,
					PARAMETER_NAME                                                                          as ParameterName,
					DATA_TYPE                                                                               as DataType,
					CHARACTER_MAXIMUM_LENGTH                                                                as Length,
					NUMERIC_PRECISION                                                                       as [Precision],
					NUMERIC_SCALE                                                                           as Scale,
					CASE WHEN PARAMETER_MODE = 'IN'  OR PARAMETER_MODE = 'INOUT' THEN 1 ELSE 0 END          as IsIn,
					CASE WHEN PARAMETER_MODE = 'OUT' OR PARAMETER_MODE = 'INOUT' THEN 1 ELSE 0 END          as IsOut,
					CASE WHEN IS_RESULT      = 'YES'                             THEN 1 ELSE 0 END          as IsResult,
					USER_DEFINED_TYPE_CATALOG                                                               as UDTCatalog,
					USER_DEFINED_TYPE_SCHEMA                                                                as UDTSchema,
					USER_DEFINED_TYPE_NAME                                                                  as UDTName,
					1                                                                                       as IsNullable,
					ISNULL(CONVERT(varchar(8000), x.value), '')                                             as Description
				FROM
					INFORMATION_SCHEMA.PARAMETERS
					LEFT JOIN sys.extended_properties x
						ON OBJECT_ID('[' + SPECIFIC_SCHEMA + '].[' + SPECIFIC_NAME + ']') = x.major_id AND
							ORDINAL_POSITION = x.minor_id AND
							x.name = 'MS_Description' AND x.class = 2

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[dbo].[AddIssue792Record]

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[dbo].[DuplicateColumnNames]

-- SqlServer.Contained SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataContained].[dbo].[ExecuteProcIntParameters]

-- SqlServer.Contained SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataContained].[dbo].[ExecuteProcStringParameters]

-- SqlServer.Contained SqlServer.2019

EXEC('SELECT * FROM [TestDataContained].[dbo].[GetParentByID](NULL)')

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[dbo].[Issue1897]

-- SqlServer.Contained SqlServer.2019

EXEC('SELECT * FROM [TestDataContained].[dbo].[Issue1921]()')

-- SqlServer.Contained SqlServer.2019
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestDataContained].[dbo].[OutRefEnumTest]

-- SqlServer.Contained SqlServer.2019
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

[TestDataContained].[dbo].[OutRefTest]

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[dbo].[Patient_SelectAll]

-- SqlServer.Contained SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataContained].[dbo].[Patient_SelectByName]

-- SqlServer.Contained SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestDataContained].[dbo].[Person_Delete]

-- SqlServer.Contained SqlServer.2019
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestDataContained].[dbo].[Person_Insert]

-- SqlServer.Contained SqlServer.2019
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

[TestDataContained].[dbo].[Person_Insert_OutputParameter]

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[dbo].[Person_SelectAll]

-- SqlServer.Contained SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataContained].[dbo].[Person_SelectByKey]

-- SqlServer.Contained SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataContained].[dbo].[Person_SelectByKeyLowercase]

-- SqlServer.Contained SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataContained].[dbo].[Person_SelectByName]

-- SqlServer.Contained SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataContained].[dbo].[Person_SelectListByName]

-- SqlServer.Contained SqlServer.2019
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

[TestDataContained].[dbo].[Person_Update]

-- SqlServer.Contained SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataContained].[dbo].[PersonSearch]

-- SqlServer.Contained SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0
DECLARE @output3 Int -- Int32
SET     @output3 = 0

[TestDataContained].[dbo].[QueryProcMultipleParameters]

-- SqlServer.Contained SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestDataContained].[dbo].[QueryProcParameters]

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[dbo].[SelectImplicitColumn]

-- SqlServer.Contained SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataContained].[dbo].[TableTypeTestProc]

-- SqlServer.Contained SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataContained].[dbo].[VariableResults]

-- SqlServer.Contained SqlServer.2019

EXEC('SELECT * FROM [TestDataContained].[TestSchema].[SchemaTableFunction](NULL)')

-- SqlServer.Contained SqlServer.2019

[TestDataContained].[TestSchema].[TestProcedure]

RollbackTransaction
-- SqlServer.Contained SqlServer.2019

select @@version

-- SqlServer.Contained SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.Contained SqlServer.2019

SELECT
					SPECIFIC_CATALOG COLLATE DATABASE_DEFAULT + '.' + SPECIFIC_SCHEMA + '.' + SPECIFIC_NAME as ProcedureID,
					SPECIFIC_CATALOG                                                                        as CatalogName,
					SPECIFIC_SCHEMA                                                                         as SchemaName,
					SPECIFIC_NAME                                                                           as ProcedureName,
					CASE WHEN ROUTINE_TYPE = 'FUNCTION'                         THEN 1 ELSE 0 END           as IsFunction,
					CASE WHEN ROUTINE_TYPE = 'FUNCTION' AND DATA_TYPE = 'TABLE' THEN 1 ELSE 0 END           as IsTableFunction,
					CASE WHEN EXISTS(SELECT * FROM sys.objects where name = SPECIFIC_NAME AND type='AF')
					                                                            THEN 1 ELSE 0 END           as IsAggregateFunction,
					CASE WHEN SPECIFIC_SCHEMA = 'dbo'                           THEN 1 ELSE 0 END           as IsDefaultSchema,
					ISNULL(CONVERT(varchar(8000), x.value), '')                                             as Description
				FROM
					INFORMATION_SCHEMA.ROUTINES
					LEFT JOIN sys.extended_properties x
						ON OBJECT_ID('[' + SPECIFIC_SCHEMA + '].[' + SPECIFIC_NAME + ']') = x.major_id AND
							x.name = 'MS_Description' AND x.class = 1
				ORDER BY SPECIFIC_CATALOG, SPECIFIC_SCHEMA, SPECIFIC_NAME

-- SqlServer.Contained SqlServer.2019

SELECT
					SPECIFIC_CATALOG COLLATE DATABASE_DEFAULT + '.' + SPECIFIC_SCHEMA + '.' + SPECIFIC_NAME as ProcedureID,
					ORDINAL_POSITION                                                                        as Ordinal,
					PARAMETER_MODE                                                                          as Mode,
					PARAMETER_NAME                                                                          as ParameterName,
					DATA_TYPE                                                                               as DataType,
					CHARACTER_MAXIMUM_LENGTH                                                                as Length,
					NUMERIC_PRECISION                                                                       as [Precision],
					NUMERIC_SCALE                                                                           as Scale,
					CASE WHEN PARAMETER_MODE = 'IN'  OR PARAMETER_MODE = 'INOUT' THEN 1 ELSE 0 END          as IsIn,
					CASE WHEN PARAMETER_MODE = 'OUT' OR PARAMETER_MODE = 'INOUT' THEN 1 ELSE 0 END          as IsOut,
					CASE WHEN IS_RESULT      = 'YES'                             THEN 1 ELSE 0 END          as IsResult,
					USER_DEFINED_TYPE_CATALOG                                                               as UDTCatalog,
					USER_DEFINED_TYPE_SCHEMA                                                                as UDTSchema,
					USER_DEFINED_TYPE_NAME                                                                  as UDTName,
					1                                                                                       as IsNullable,
					ISNULL(CONVERT(varchar(8000), x.value), '')                                             as Description
				FROM
					INFORMATION_SCHEMA.PARAMETERS
					LEFT JOIN sys.extended_properties x
						ON OBJECT_ID('[' + SPECIFIC_SCHEMA + '].[' + SPECIFIC_NAME + ']') = x.major_id AND
							ORDINAL_POSITION = x.minor_id AND
							x.name = 'MS_Description' AND x.class = 2

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[AddIssue792Record] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[DuplicateColumnNames] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[ExecuteProcIntParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[ExecuteProcStringParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019

EXEC('SELECT * FROM [TestDataContained].[dbo].[GetParentByID](NULL)')

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Issue1897] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019

EXEC('SELECT * FROM [TestDataContained].[dbo].[Issue1921]()')

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[OutRefEnumTest] @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[OutRefTest] @ID, @outputID, @inputOutputID, @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ID int, @outputID int, @inputOutputID int, @str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Patient_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Patient_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_Delete] @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_Insert] @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_Insert_OutputParameter] @FirstName, @LastName, @MiddleName, @Gender, @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1), @PersonID int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_SelectByKey] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_SelectByKeyLowercase] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_SelectListByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[Person_Update] @PersonID, @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int, @FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[PersonSearch] @nameFilter'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@nameFilter nvarchar(512)'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataContained].[dbo].[PersonSearch]

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[QueryProcMultipleParameters] @input, @output1, @output2, @output3'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int, @output3 int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[QueryProcParameters] @input, @output1, @output2'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[SelectImplicitColumn] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[TableTypeTestProc] @table'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@table [dbo].[TestTableType]'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataContained].[dbo].[TableTypeTestProc]

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[dbo].[VariableResults] @ReturnFullRow'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ReturnFullRow bit'

sp_describe_first_result_set

-- SqlServer.Contained SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataContained].[dbo].[VariableResults]

-- SqlServer.Contained SqlServer.2019

EXEC('SELECT * FROM [TestDataContained].[TestSchema].[SchemaTableFunction](NULL)')

-- SqlServer.Contained SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataContained].[TestSchema].[TestProcedure] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

RollbackTransaction
