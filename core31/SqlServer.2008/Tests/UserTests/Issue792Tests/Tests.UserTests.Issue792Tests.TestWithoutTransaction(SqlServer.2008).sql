﻿BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[AllTypes] [t1]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008

select @@version

BeforeExecute
-- SqlServer.2008

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

BeforeExecute
-- SqlServer.2008

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

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

[TestData].[dbo].[AddIssue792Record]

BeforeExecute
-- SqlServer.2008

[TestData].[dbo].[DuplicateColumnNames]

BeforeExecute
-- SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestData].[dbo].[ExecuteProcIntParameters]

BeforeExecute
-- SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestData].[dbo].[ExecuteProcStringParameters]

BeforeExecute
-- SqlServer.2008

SELECT * FROM [TestData].[dbo].[GetParentByID](NULL)

BeforeExecute
-- SqlServer.2008

[TestData].[dbo].[Issue1897]

BeforeExecute
-- SqlServer.2008

SELECT * FROM [TestData].[dbo].[Issue1921]()

BeforeExecute
-- SqlServer.2008
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestData].[dbo].[OutRefEnumTest]

BeforeExecute
-- SqlServer.2008
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

BeforeExecute
-- SqlServer.2008

[TestData].[dbo].[Patient_SelectAll]

BeforeExecute
-- SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestData].[dbo].[Patient_SelectByName]

BeforeExecute
-- SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestData].[dbo].[Person_Delete]

BeforeExecute
-- SqlServer.2008
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(50) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(50) -- String
SET     @MiddleName = N''
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = char(0)

[TestData].[dbo].[Person_Insert]

BeforeExecute
-- SqlServer.2008
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

BeforeExecute
-- SqlServer.2008

[TestData].[dbo].[Person_SelectAll]

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

[TestData].[dbo].[Person_SelectByKey]

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

[TestData].[dbo].[Person_SelectByKeyLowercase]

BeforeExecute
-- SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestData].[dbo].[Person_SelectByName]

BeforeExecute
-- SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestData].[dbo].[Person_SelectListByName]

BeforeExecute
-- SqlServer.2008
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

BeforeExecute
-- SqlServer.2008
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestData].[dbo].[PersonSearch]

BeforeExecute
-- SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0
DECLARE @output3 Int -- Int32
SET     @output3 = 0

[TestData].[dbo].[QueryProcMultipleParameters]

BeforeExecute
-- SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestData].[dbo].[QueryProcParameters]

BeforeExecute
-- SqlServer.2008

[TestData].[dbo].[SelectImplicitColumn]

BeforeExecute
-- SqlServer.2008
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestData].[dbo].[TableTypeTestProc]

BeforeExecute
-- SqlServer.2008
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestData].[dbo].[VariableResults]

BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[AllTypes] [t1]

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = N'issue792'

