BeforeExecute
-- SqlServer.Northwind SqlServer.2019

select @@version

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT compatibility_level FROM sys.databases WHERE name = db_name()

BeforeExecute
-- SqlServer.Northwind SqlServer.2019


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
-- SqlServer.Northwind SqlServer.2019


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
-- SqlServer.Northwind SqlServer.2019


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
						OR COLUMNPROPERTY(object_id('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'GeneratedAlwaysType') <> 0
						OR t.temporal_type = 1

						THEN 1 ELSE 0 END as SkipOnInsert,
					CASE WHEN c.DATA_TYPE = 'timestamp'
						OR COLUMNPROPERTY(object_id('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'IsComputed') = 1
						OR COLUMNPROPERTY(object_id('[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']'), COLUMN_NAME, 'GeneratedAlwaysType') <> 0
						OR t.temporal_type = 1

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
					LEFT JOIN sys.tables t ON OBJECT_ID('[' + TABLE_CATALOG + '].[' + TABLE_SCHEMA + '].[' + TABLE_NAME + ']') = t.object_id

BeforeExecute
-- SqlServer.Northwind SqlServer.2019


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
-- SqlServer.Northwind SqlServer.2019

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
-- SqlServer.Northwind SqlServer.2019

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
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[CustOrderHist] @CustomerID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@CustomerID nchar(5)'

sp_describe_first_result_set

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[CustOrdersDetail] @OrderID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@OrderID int'

sp_describe_first_result_set

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[CustOrdersOrders] @CustomerID'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@CustomerID nchar(5)'

sp_describe_first_result_set

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[Employee Sales by Country] @Beginning_Date, @Ending_Date'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@Beginning_Date datetime, @Ending_Date datetime'

sp_describe_first_result_set

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[Sales by Year] @Beginning_Date, @Ending_Date'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@Beginning_Date datetime, @Ending_Date datetime'

sp_describe_first_result_set

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[SalesByCategory] @CategoryName, @OrdYear'
DECLARE @params NVarChar(4000) -- String
SET     @params = N'@CategoryName nvarchar(15), @OrdYear nvarchar(4)'

sp_describe_first_result_set

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @tsql NVarChar(4000) -- String
SET     @tsql = N'exec [Northwind].[dbo].[Ten Most Expensive Products] '
DECLARE @params NVarChar(4000) -- String
SET     @params = N''

sp_describe_first_result_set

BeforeExecute
RollbackTransaction
