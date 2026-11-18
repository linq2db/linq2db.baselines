-- SqlServer.Contained SqlServer.2025
select @@version

-- SqlServer.Contained SqlServer.2025
SELECT compatibility_level FROM sys.databases WHERE name = db_name()

-- SqlServer.Contained SqlServer.2025
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
	ISNULL(CONVERT(NVARCHAR(MAX), x.value), N'')                                            as Description
FROM
	INFORMATION_SCHEMA.ROUTINES
	LEFT JOIN sys.extended_properties x
		ON OBJECT_ID('[' + SPECIFIC_SCHEMA + '].[' + SPECIFIC_NAME + ']') = x.major_id AND
			x.name = 'MS_Description' AND x.class = 1
ORDER BY SPECIFIC_CATALOG, SPECIFIC_SCHEMA, SPECIFIC_NAME

-- SqlServer.Contained SqlServer.2025
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
	ISNULL(CONVERT(NVARCHAR(MAX), x.value), N'')                                            as Description
FROM
	INFORMATION_SCHEMA.PARAMETERS
	LEFT JOIN sys.extended_properties x
		ON OBJECT_ID('[' + SPECIFIC_SCHEMA + '].[' + SPECIFIC_NAME + ']') = x.major_id AND
			ORDINAL_POSITION = x.minor_id AND
			x.name = 'MS_Description' AND x.class = 2

-- SqlServer.Contained SqlServer.2025
EXEC('SELECT * FROM [TestDataContained].[dbo].[GetParentByID](NULL)')

-- SqlServer.Contained SqlServer.2025
EXEC('SELECT * FROM [TestDataContained].[dbo].[Issue1921]()')

-- SqlServer.Contained SqlServer.2025
EXEC('SELECT * FROM [TestDataContained].[TestSchema].[SchemaTableFunction](NULL)')

RollbackTransaction
