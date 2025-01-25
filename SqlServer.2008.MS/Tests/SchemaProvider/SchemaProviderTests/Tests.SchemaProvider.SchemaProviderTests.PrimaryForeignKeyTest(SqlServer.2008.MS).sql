BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

select @@version

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008


				SELECT
					TABLE_CATALOG COLLATE DATABASE_DEFAULT + '.' + TABLE_SCHEMA + '.' + TABLE_NAME as TableID,
					TABLE_CATALOG                                                                  as CatalogName,
					TABLE_SCHEMA                                                                   as SchemaName,
					TABLE_NAME                                                                     as TableName,
					CASE WHEN TABLE_TYPE = 'VIEW' THEN 1 ELSE 0 END                                as IsView,
					ISNULL(CONVERT(varchar(8000), x.value), '')                                    as Description,
					CASE WHEN TABLE_SCHEMA = 'dbo' THEN 1 ELSE 0 END                               as IsDefaultSchema
				FROM
					INFORMATION_SCHEMA.TABLES s
					LEFT JOIN
						sys.tables t
					ON
						OBJECT_ID('[' + TABLE_CATALOG + '].[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']') = t.object_id
					LEFT JOIN
						sys.extended_properties x
					ON
						OBJECT_ID('[' + TABLE_CATALOG + '].[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']') = x.major_id AND
						x.minor_id = 0 AND
						x.name = 'MS_Description'
				WHERE
					t.object_id IS NULL OR
					t.is_ms_shipped <> 1 AND
					(
						SELECT
							major_id
						FROM
							sys.extended_properties
						WHERE
							major_id = t.object_id AND
							minor_id = 0           AND
							class    = 1           AND
							name     = N'microsoft_database_tools_support'
					) IS NULL

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008


				SELECT
					k.TABLE_CATALOG COLLATE DATABASE_DEFAULT + '.' + k.TABLE_SCHEMA + '.' + k.TABLE_NAME as TableID,
					k.CONSTRAINT_NAME                                                                    as PrimaryKeyName,
					k.COLUMN_NAME                                                                        as ColumnName,
					k.ORDINAL_POSITION                                                                   as Ordinal
				FROM
					INFORMATION_SCHEMA.KEY_COLUMN_USAGE k
					JOIN
						INFORMATION_SCHEMA.TABLE_CONSTRAINTS c
					ON
						k.CONSTRAINT_CATALOG = c.CONSTRAINT_CATALOG AND
						k.CONSTRAINT_SCHEMA  = c.CONSTRAINT_SCHEMA AND
						k.CONSTRAINT_NAME    = c.CONSTRAINT_NAME
				WHERE
					c.CONSTRAINT_TYPE='PRIMARY KEY'

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008


				SELECT
					TABLE_CATALOG COLLATE DATABASE_DEFAULT + '.' + TABLE_SCHEMA + '.' + TABLE_NAME                      as TableID,
					COLUMN_NAME                                                                                         as Name,
					CASE WHEN IS_NULLABLE = 'YES' THEN 1 ELSE 0 END                                                     as IsNullable,
					ORDINAL_POSITION                                                                                    as Ordinal,
					c.DATA_TYPE                                                                                         as DataType,
					CHARACTER_MAXIMUM_LENGTH                                                                            as Length,
					ISNULL(NUMERIC_PRECISION, DATETIME_PRECISION)                                                       as [Precision],
					NUMERIC_SCALE                                                                                       as Scale,
					ISNULL(CONVERT(varchar(8000), x.value), '')                                                         as [Description],
					COLUMNPROPERTY(object_id('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'IsIdentity') as IsIdentity,
					CASE WHEN c.DATA_TYPE = 'timestamp'
						OR COLUMNPROPERTY(object_id('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'IsComputed') = 1
						THEN 1 ELSE 0 END as SkipOnInsert,
					CASE WHEN c.DATA_TYPE = 'timestamp'
						OR COLUMNPROPERTY(object_id('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'IsComputed') = 1
						THEN 1 ELSE 0 END as SkipOnUpdate
				FROM
					INFORMATION_SCHEMA.COLUMNS c
					LEFT JOIN
						sys.extended_properties x
					ON
						--OBJECT_ID('[' + TABLE_CATALOG + '].[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']') = x.major_id AND
						OBJECT_ID('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']') = x.major_id AND
						COLUMNPROPERTY(OBJECT_ID('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'ColumnID') = x.minor_id AND
						x.name = 'MS_Description' AND x.class = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008


				SELECT
					fk.name                                                     as Name,
					DB_NAME() + '.' + SCHEMA_NAME(po.schema_id) + '.' + po.name as ThisTableID,
					pc.name                                                     as ThisColumn,
					DB_NAME() + '.' + SCHEMA_NAME(fo.schema_id) + '.' + fo.name as OtherTableID,
					fc.name                                                     as OtherColumn,
					fkc.constraint_column_id                                    as Ordinal
				FROM sys.foreign_keys fk
					inner join sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
					inner join sys.columns             pc  ON fkc.parent_column_id = pc.column_id and fkc.parent_object_id = pc.object_id
					inner join sys.objects             po  ON fk.parent_object_id = po.object_id
					inner join sys.columns             fc  ON fkc.referenced_column_id = fc.column_id and fkc.referenced_object_id = fc.object_id
					inner join sys.objects             fo  ON fk.referenced_object_id = fo.object_id
				ORDER BY
					ThisTableID,
					Ordinal

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[AddIssue792Record]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[DuplicateColumnNames]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMS].[dbo].[ExecuteProcIntParameters]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output Int -- Int32
SET     @output = 0

[TestDataMS].[dbo].[ExecuteProcStringParameters]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT * FROM [TestDataMS].[dbo].[GetParentByID](NULL)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[Issue1897]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT * FROM [TestDataMS].[dbo].[Issue1921]()

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @str VarChar(50) -- AnsiString
SET     @str = N''
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N''
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N''

[TestDataMS].[dbo].[OutRefEnumTest]

BeforeExecute
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[Patient_SelectAll]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMS].[dbo].[Patient_SelectByName]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 0

[TestDataMS].[dbo].[Person_Delete]

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[Person_SelectAll]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMS].[dbo].[Person_SelectByKey]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 0

[TestDataMS].[dbo].[Person_SelectByKeyLowercase]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMS].[dbo].[Person_SelectByName]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @firstName NVarChar(50) -- String
SET     @firstName = N''
DECLARE @lastName NVarChar(50) -- String
SET     @lastName = N''

[TestDataMS].[dbo].[Person_SelectListByName]

BeforeExecute
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @nameFilter NVarChar(512) -- String
SET     @nameFilter = N''

[TestDataMS].[dbo].[PersonSearch]

BeforeExecute
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @input Int -- Int32
SET     @input = 0
DECLARE @output1 Int -- Int32
SET     @output1 = 0
DECLARE @output2 Int -- Int32
SET     @output2 = 0

[TestDataMS].[dbo].[QueryProcParameters]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

[TestDataMS].[dbo].[SelectImplicitColumn]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

[TestDataMS].[dbo].[TableTypeTestProc]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @ReturnFullRow Bit -- Boolean
SET     @ReturnFullRow = 0

[TestDataMS].[dbo].[VariableResults]

BeforeExecute
RollbackTransaction
