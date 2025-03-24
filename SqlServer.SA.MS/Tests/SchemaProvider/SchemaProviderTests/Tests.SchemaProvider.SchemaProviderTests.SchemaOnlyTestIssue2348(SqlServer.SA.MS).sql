﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

select @@version

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

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

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

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

BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[AddIssue792Record]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[DuplicateColumnNames]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMSSA].[dbo].[ExecuteProcIntParameters]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMSSA].[dbo].[ExecuteProcStringParameters]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[GetParentByID](NULL)')

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[Issue1897]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[Issue1921]()')

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestDataMSSA].[dbo].[OutRefEnumTest]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[Patient_SelectAll]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMSSA].[dbo].[Patient_SelectByName]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestDataMSSA].[dbo].[Person_Delete]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestDataMSSA].[dbo].[Person_Insert]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[Person_SelectAll]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMSSA].[dbo].[Person_SelectByKey]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMSSA].[dbo].[Person_SelectByKeyLowercase]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMSSA].[dbo].[Person_SelectByName]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMSSA].[dbo].[Person_SelectListByName]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataMSSA].[dbo].[PersonSearch]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0
DECLARE @output3 Int -- Int32
SET     @output3 = 0

[TestDataMSSA].[dbo].[QueryProcMultipleParameters]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestDataMSSA].[dbo].[QueryProcParameters]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[dbo].[SelectImplicitColumn]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataMSSA].[dbo].[TableTypeTestProc]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataMSSA].[dbo].[VariableResults]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[TestSchema].[SchemaTableFunction](NULL)')

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

[TestDataMSSA].[TestSchema].[TestProcedure]

BeforeExecute
RollbackTransaction
BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

select @@version

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

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

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

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

BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[AddIssue792Record] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[DuplicateColumnNames] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[ExecuteProcIntParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[ExecuteProcStringParameters] @input, @output'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[GetParentByID](NULL)')

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Issue1897] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[dbo].[Issue1921]()')

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[OutRefEnumTest] @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[OutRefTest] @ID, @outputID, @inputOutputID, @str, @outputStr, @inputOutputStr'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ID int, @outputID int, @inputOutputID int, @str varchar(50), @outputStr varchar(50), @inputOutputStr varchar(50)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Patient_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Patient_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Delete] @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Insert] @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Insert_OutputParameter] @FirstName, @LastName, @MiddleName, @Gender, @PersonID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1), @PersonID int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectAll] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectByKey] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectByKeyLowercase] @id'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@id int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_SelectListByName] @firstName, @lastName'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@firstName nvarchar(50), @lastName nvarchar(50)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[Person_Update] @PersonID, @FirstName, @LastName, @MiddleName, @Gender'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@PersonID int, @FirstName nvarchar(50), @LastName nvarchar(50), @MiddleName nvarchar(50), @Gender char(1)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[PersonSearch] @nameFilter'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@nameFilter nvarchar(512)'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataMSSA].[dbo].[PersonSearch]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[QueryProcMultipleParameters] @input, @output1, @output2, @output3'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int, @output3 int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[QueryProcParameters] @input, @output1, @output2'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@input int, @output1 int, @output2 int'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[SelectImplicitColumn] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[TableTypeTestProc] @table'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@table [dbo].[TestTableType]'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataMSSA].[dbo].[TableTypeTestProc]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[dbo].[VariableResults] @ReturnFullRow'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@ReturnFullRow bit'

sp_describe_first_result_set

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataMSSA].[dbo].[VariableResults]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

EXEC('SELECT * FROM [TestDataMSSA].[TestSchema].[SchemaTableFunction](NULL)')

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [TestDataMSSA].[TestSchema].[TestProcedure] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
RollbackTransaction
