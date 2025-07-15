BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT  VERSION from PRODUCT_COMPONENT_VERSION WHERE ROWNUM = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

select user from dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @CurrentUser Varchar2(6) -- String
SET     @CurrentUser = 'SYSTEM'


					SELECT
						d.OWNER || '.' || d.NAME                                     as TableID,
						d.OWNER                                                      as SchemaName,
						d.NAME                                                       as TableName,
						d.IsView                                                     as IsView,
						CASE :CurrentUser WHEN d.OWNER THEN 1 ELSE 0 END             as IsDefaultSchema,
						CASE d.MatView WHEN 1 THEN mvc.COMMENTS ELSE tc.COMMENTS END as Description
					FROM
					(
						SELECT t.OWNER, t.TABLE_NAME NAME, 0 as IsView, 0 as MatView FROM ALL_TABLES t
							LEFT JOIN ALL_MVIEWS tm ON t.OWNER = tm.OWNER AND t.TABLE_NAME = tm.CONTAINER_NAME
							WHERE tm.MVIEW_NAME IS NULL AND t.OWNER IN ('SYSTEM')
						UNION ALL
						SELECT v.OWNER, v.VIEW_NAME NAME, 1 as IsView, 0 as MatView FROM ALL_VIEWS v
							WHERE v.OWNER IN ('SYSTEM')
						UNION ALL
						SELECT m.OWNER, m.MVIEW_NAME NAME, 1 as IsView, 1 as MatView FROM ALL_MVIEWS m
							WHERE m.OWNER IN ('SYSTEM')
					) d
						LEFT JOIN ALL_TAB_COMMENTS tc ON
							d.OWNER = tc.OWNER AND
							d.NAME  = tc.TABLE_NAME
						LEFT JOIN ALL_MVIEW_COMMENTS mvc ON
							d.OWNER = mvc.OWNER AND
							d.NAME  = mvc.MVIEW_NAME
					ORDER BY TableID, isView
					

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12


					SELECT
						FKCOLS.OWNER || '.' || FKCOLS.TABLE_NAME as TableID,
						FKCOLS.CONSTRAINT_NAME                   as PrimaryKeyName,
						FKCOLS.COLUMN_NAME                       as ColumnName,
						FKCOLS.POSITION                          as Ordinal
					FROM
						ALL_CONS_COLUMNS FKCOLS,
						ALL_CONSTRAINTS FKCON
					WHERE
						FKCOLS.OWNER           = FKCON.OWNER AND
						FKCOLS.TABLE_NAME      = FKCON.TABLE_NAME AND
						FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME AND
						FKCON.CONSTRAINT_TYPE  = 'P' AND
						FKCOLS.OWNER IN ('SYSTEM')

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12


					SELECT
						c.OWNER || '.' || c.TABLE_NAME             as TableID,
						c.COLUMN_NAME                              as Name,
						c.DATA_TYPE                                as DataType,
						CASE c.NULLABLE WHEN 'Y' THEN 1 ELSE 0 END as IsNullable,
						c.COLUMN_ID                                as Ordinal,
						c.DATA_LENGTH                              as Length,
						c.CHAR_LENGTH                              as CharLength,
						c.DATA_PRECISION                           as Precision,
						c.DATA_SCALE                               as Scale,
						CASE c.IDENTITY_COLUMN WHEN 'YES' THEN 1 ELSE 0 END as IsIdentity,
						cc.COMMENTS                                as Description
					FROM ALL_TAB_COLUMNS c
						JOIN ALL_COL_COMMENTS cc ON
							c.OWNER       = cc.OWNER      AND
							c.TABLE_NAME  = cc.TABLE_NAME AND
							c.COLUMN_NAME = cc.COLUMN_NAME
					WHERE c.OWNER IN ('SYSTEM')

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12


						SELECT
							FKCON.CONSTRAINT_NAME                  as Name,
							FKCON.OWNER || '.' || FKCON.TABLE_NAME as ThisTableID,
							FKCOLS.COLUMN_NAME                     as ThisColumn,
							PKCON.OWNER || '.' || PKCON.TABLE_NAME as OtherTableID,
							PKCOLS.COLUMN_NAME                     as OtherColumn,
							FKCOLS.POSITION                        as Ordinal
						FROM
							ALL_CONSTRAINTS FKCON
								JOIN ALL_CONS_COLUMNS FKCOLS ON
									FKCOLS.OWNER           = FKCON.OWNER      AND
									FKCOLS.TABLE_NAME      = FKCON.TABLE_NAME AND
									FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME
							JOIN
							ALL_CONSTRAINTS  PKCON
								JOIN ALL_CONS_COLUMNS PKCOLS ON
									PKCOLS.OWNER           = PKCON.OWNER      AND
									PKCOLS.TABLE_NAME      = PKCON.TABLE_NAME AND
									PKCOLS.CONSTRAINT_NAME = PKCON.CONSTRAINT_NAME
							ON
								PKCON.OWNER           = FKCON.R_OWNER AND
								PKCON.CONSTRAINT_NAME = FKCON.R_CONSTRAINT_NAME
						WHERE
							FKCON.CONSTRAINT_TYPE = 'R'          AND
							FKCOLS.POSITION       = PKCOLS.POSITION AND
							FKCON.OWNER IN ('SYSTEM') AND
							PKCON.OWNER IN ('SYSTEM')

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p.OWNER                                                                                                                              AS Owner,
	CASE WHEN p.OWNER = USER THEN 1 ELSE 0 END                                                                                           AS IsDefault,
	p.OVERLOAD                                                                                                                           AS Overload,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.OBJECT_NAME ELSE NULL END                                                                 AS PackageName,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.PROCEDURE_NAME ELSE p.OBJECT_NAME END                                                     AS ProcedureName,
	CASE WHEN a.DATA_TYPE IS NULL THEN 'PROCEDURE' WHEN a.DATA_TYPE = 'TABLE' THEN 'TABLE_FUNCTION' ELSE 'FUNCTION' END AS ProcedureType
FROM ALL_PROCEDURES p
	LEFT OUTER JOIN ALL_ARGUMENTS a ON
		a.OWNER = p.OWNER
			AND ((a.PACKAGE_NAME = p.OBJECT_NAME AND a.OBJECT_NAME = p.PROCEDURE_NAME)
				OR (a.PACKAGE_NAME IS NULL AND p.PROCEDURE_NAME IS NULL AND a.OBJECT_NAME = p.OBJECT_NAME))
			AND a.ARGUMENT_NAME IS NULL
			AND a.DATA_LEVEL = 0
WHERE ((p.OBJECT_TYPE IN ('PROCEDURE', 'FUNCTION') AND PROCEDURE_NAME IS NULL) OR PROCEDURE_NAME IS NOT NULL)
	AND p.OWNER IN ('SYSTEM')
ORDER BY
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.OBJECT_NAME ELSE NULL END,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.PROCEDURE_NAME ELSE p.OBJECT_NAME END

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	OWNER          AS Owner,
	PACKAGE_NAME   AS PackageName,
	OBJECT_NAME    AS ProcedureName,
	OVERLOAD       AS Overload,
	IN_OUT         AS Direction,
	DATA_LENGTH    AS DataLength,
	ARGUMENT_NAME  AS Name,
	DATA_TYPE      AS Type,
	POSITION       AS Ordinal,
	DATA_PRECISION AS Precision,
	DATA_SCALE     AS Scale
FROM ALL_ARGUMENTS
WHERE OWNER IN ('SYSTEM') AND SEQUENCE > 0 AND DATA_LEVEL = 0
	AND (DATA_TYPE <> 'TABLE' OR IN_OUT <> 'OUT' OR POSITION <> 0)

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SYSTEM.ISSUE2132.TEST

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @I Decimal(22)
SET     @I = 0
DECLARE @O Decimal(22)
SET     @O = 0

SYSTEM.TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.TEST_PACKAGE1.TEST_TABLE_FUNCTION(NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @I Decimal(22)
SET     @I = 0
DECLARE @O Decimal(22)
SET     @O = 0

SYSTEM.TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.TEST_PACKAGE2.TEST_TABLE_FUNCTION(NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SYSTEM.ADDISSUE792RECORD

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Decimal(22)
SET     @ID = 0
DECLARE @BIGINTDATATYPE Decimal(22)
SET     @BIGINTDATATYPE = 0
DECLARE @NUMERICDATATYPE Decimal(22)
SET     @NUMERICDATATYPE = 0
DECLARE @BITDATATYPE Decimal(22)
SET     @BITDATATYPE = 0
DECLARE @SMALLINTDATATYPE Decimal(22)
SET     @SMALLINTDATATYPE = 0
DECLARE @DECIMALDATATYPE Decimal(22)
SET     @DECIMALDATATYPE = 0
DECLARE @SMALLMONEYDATATYPE Decimal(22)
SET     @SMALLMONEYDATATYPE = 0
DECLARE @INTDATATYPE Decimal(22)
SET     @INTDATATYPE = 0
DECLARE @TINYINTDATATYPE Decimal(22)
SET     @TINYINTDATATYPE = 0
DECLARE @MONEYDATATYPE Decimal(22)
SET     @MONEYDATATYPE = 0
DECLARE @FLOATDATATYPE BinaryDouble -- Double
SET     @FLOATDATATYPE = 0D
DECLARE @REALDATATYPE BinaryFloat -- Single
SET     @REALDATATYPE = 0
DECLARE @DATETIMEDATATYPE TimeStamp -- DateTime
SET     @DATETIMEDATATYPE = TIMESTAMP '2020-09-23 00:00:00.000000'
DECLARE @DATETIME2DATATYPE TimeStamp -- DateTime
SET     @DATETIME2DATATYPE = TIMESTAMP '2020-09-23 00:00:00.000000'
DECLARE @DATETIMEOFFSETDATATYPE TimeStampTZ -- DateTimeOffset
SET     @DATETIMEOFFSETDATATYPE = 01/01/0001 00:00:00 +00:00
DECLARE @LOCALZONEDATATYPE TimeStampTZ -- DateTimeOffset
SET     @LOCALZONEDATATYPE = 01/01/0001 00:00:00 +00:00
DECLARE @CHARDATATYPE Char -- AnsiStringFixedLength
SET     @CHARDATATYPE = ''
DECLARE @CHAR20DATATYPE Char -- AnsiStringFixedLength
SET     @CHAR20DATATYPE = ''
DECLARE @VARCHARDATATYPE Varchar2 -- String
SET     @VARCHARDATATYPE = ''
DECLARE @TEXTDATATYPE Clob -- Object
SET     @TEXTDATATYPE = ''
DECLARE @NCHARDATATYPE Char -- StringFixedLength
SET     @NCHARDATATYPE = ''
DECLARE @NVARCHARDATATYPE NVarchar2 -- String
SET     @NVARCHARDATATYPE = ''
DECLARE @NTEXTDATATYPE NClob -- Object
SET     @NTEXTDATATYPE = ''
DECLARE @BINARYDATATYPE Blob -- Object
SET     @BINARYDATATYPE = NULL
DECLARE @BFILEDATATYPE Blob -- Object
SET     @BFILEDATATYPE = NULL
DECLARE @GUIDDATATYPE Blob -- Object
SET     @GUIDDATATYPE = NULL
DECLARE @XMLDATATYPE Varchar2 -- String
SET     @XMLDATATYPE = NULL

SYSTEM.ALLOUTPUTPARAMETERS

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PINTARRAY Varchar2 -- String
SET     @PINTARRAY = NULL
DECLARE @POUTPUTINTARRAY Varchar2 -- String
SET     @POUTPUTINTARRAY = NULL
DECLARE @PINPUTOUTPUTINTARRAY Varchar2 -- String
SET     @PINPUTOUTPUTINTARRAY = NULL
DECLARE @PSTRARRAY Varchar2 -- String
SET     @PSTRARRAY = NULL
DECLARE @POUTPUTSTRARRAY Varchar2 -- String
SET     @POUTPUTSTRARRAY = NULL
DECLARE @PINPUTOUTPUTSTRARRAY Varchar2 -- String
SET     @PINPUTOUTPUTSTRARRAY = NULL

SYSTEM.ARRAYTEST

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.LOGMNR$COL_GG_TABF_PUBLIC(NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.LOGMNR$GSBA_GG_TABF_PUBLIC(NULL,NULL,NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.LOGMNR$KEY_GG_TABF_PUBLIC(NULL,NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.LOGMNR$SEQ_GG_TABF_PUBLIC(NULL,NULL,NULL,NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.LOGMNR$TAB_GG_TABF_PUBLIC(NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.LOGMNR$USER_GG_TABF_PUBLIC(NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PSTR NVarchar2 -- String
SET     @PSTR = ''
DECLARE @POUTPUTSTR NVarchar2 -- String
SET     @POUTPUTSTR = ''
DECLARE @PINPUTOUTPUTSTR NVarchar2 -- String
SET     @PINPUTOUTPUTSTR = ''

SYSTEM.OUTREFENUMTEST

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PID Decimal(22)
SET     @PID = 0
DECLARE @POUTPUTID Decimal(22)
SET     @POUTPUTID = 0
DECLARE @PINPUTOUTPUTID Decimal(22)
SET     @PINPUTOUTPUTID = 0
DECLARE @PSTR NVarchar2 -- String
SET     @PSTR = ''
DECLARE @POUTPUTSTR NVarchar2 -- String
SET     @POUTPUTSTR = ''
DECLARE @PINPUTOUTPUTSTR NVarchar2 -- String
SET     @PINPUTOUTPUTSTR = ''

SYSTEM.OUTREFTEST

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PPERSONID Decimal(22)
SET     @PPERSONID = 0

SYSTEM.PERSON_DELETE

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PFIRSTNAME NVarchar2 -- String
SET     @PFIRSTNAME = ''
DECLARE @PLASTNAME NVarchar2 -- String
SET     @PLASTNAME = ''
DECLARE @PMIDDLENAME NVarchar2 -- String
SET     @PMIDDLENAME = ''
DECLARE @PGENDER Char -- AnsiStringFixedLength
SET     @PGENDER = ''
DECLARE @PPERSONID Decimal(22)
SET     @PPERSONID = 0

SYSTEM.PERSON_INSERT_OUTPUTPARAMETER

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PPERSONID Decimal(22)
SET     @PPERSONID = 0
DECLARE @PFIRSTNAME NVarchar2 -- String
SET     @PFIRSTNAME = ''
DECLARE @PLASTNAME NVarchar2 -- String
SET     @PLASTNAME = ''
DECLARE @PMIDDLENAME NVarchar2 -- String
SET     @PMIDDLENAME = ''
DECLARE @PGENDER Char -- AnsiStringFixedLength
SET     @PGENDER = ''

SYSTEM.PERSON_UPDATE

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @MR RefCursor -- Object
SET     @MR = NULL
DECLARE @SR RefCursor -- Object
SET     @SR = NULL

SYSTEM.RESULTSETTEST

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @POUTPUTINTARRAY Varchar2 -- String
SET     @POUTPUTINTARRAY = NULL

SYSTEM.SCALARARRAY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @POUTPUTINT Int32
SET     @POUTPUTINT = 0
DECLARE @POUTPUTSTRING NVarchar2 -- String
SET     @POUTPUTSTRING = ''

SYSTEM.SCALAR_OUTPUTPARAMETER

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @I Decimal(22)
SET     @I = 0
DECLARE @O Decimal(22)
SET     @O = 0

SYSTEM.TEST_PROCEDURE

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT * FROM SYSTEM.TEST_TABLE_FUNCTION(NULL)

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT  VERSION from PRODUCT_COMPONENT_VERSION WHERE ROWNUM = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT  VERSION from PRODUCT_COMPONENT_VERSION WHERE ROWNUM = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

select user from dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @CurrentUser Varchar2(6) -- String
SET     @CurrentUser = 'SYSTEM'


					SELECT
						d.OWNER || '.' || d.NAME                                     as TableID,
						d.OWNER                                                      as SchemaName,
						d.NAME                                                       as TableName,
						d.IsView                                                     as IsView,
						CASE :CurrentUser WHEN d.OWNER THEN 1 ELSE 0 END             as IsDefaultSchema,
						CASE d.MatView WHEN 1 THEN mvc.COMMENTS ELSE tc.COMMENTS END as Description
					FROM
					(
						SELECT t.OWNER, t.TABLE_NAME NAME, 0 as IsView, 0 as MatView FROM ALL_TABLES t
							LEFT JOIN ALL_MVIEWS tm ON t.OWNER = tm.OWNER AND t.TABLE_NAME = tm.CONTAINER_NAME
							WHERE tm.MVIEW_NAME IS NULL AND t.OWNER IN ('IncludeExcludeSchemaTest')
						UNION ALL
						SELECT v.OWNER, v.VIEW_NAME NAME, 1 as IsView, 0 as MatView FROM ALL_VIEWS v
							WHERE v.OWNER IN ('IncludeExcludeSchemaTest')
						UNION ALL
						SELECT m.OWNER, m.MVIEW_NAME NAME, 1 as IsView, 1 as MatView FROM ALL_MVIEWS m
							WHERE m.OWNER IN ('IncludeExcludeSchemaTest')
					) d
						LEFT JOIN ALL_TAB_COMMENTS tc ON
							d.OWNER = tc.OWNER AND
							d.NAME  = tc.TABLE_NAME
						LEFT JOIN ALL_MVIEW_COMMENTS mvc ON
							d.OWNER = mvc.OWNER AND
							d.NAME  = mvc.MVIEW_NAME
					ORDER BY TableID, isView
					

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12


					SELECT
						FKCOLS.OWNER || '.' || FKCOLS.TABLE_NAME as TableID,
						FKCOLS.CONSTRAINT_NAME                   as PrimaryKeyName,
						FKCOLS.COLUMN_NAME                       as ColumnName,
						FKCOLS.POSITION                          as Ordinal
					FROM
						ALL_CONS_COLUMNS FKCOLS,
						ALL_CONSTRAINTS FKCON
					WHERE
						FKCOLS.OWNER           = FKCON.OWNER AND
						FKCOLS.TABLE_NAME      = FKCON.TABLE_NAME AND
						FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME AND
						FKCON.CONSTRAINT_TYPE  = 'P' AND
						FKCOLS.OWNER IN ('IncludeExcludeSchemaTest')

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12


					SELECT
						c.OWNER || '.' || c.TABLE_NAME             as TableID,
						c.COLUMN_NAME                              as Name,
						c.DATA_TYPE                                as DataType,
						CASE c.NULLABLE WHEN 'Y' THEN 1 ELSE 0 END as IsNullable,
						c.COLUMN_ID                                as Ordinal,
						c.DATA_LENGTH                              as Length,
						c.CHAR_LENGTH                              as CharLength,
						c.DATA_PRECISION                           as Precision,
						c.DATA_SCALE                               as Scale,
						CASE c.IDENTITY_COLUMN WHEN 'YES' THEN 1 ELSE 0 END as IsIdentity,
						cc.COMMENTS                                as Description
					FROM ALL_TAB_COLUMNS c
						JOIN ALL_COL_COMMENTS cc ON
							c.OWNER       = cc.OWNER      AND
							c.TABLE_NAME  = cc.TABLE_NAME AND
							c.COLUMN_NAME = cc.COLUMN_NAME
					WHERE c.OWNER IN ('IncludeExcludeSchemaTest')

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12


						SELECT
							FKCON.CONSTRAINT_NAME                  as Name,
							FKCON.OWNER || '.' || FKCON.TABLE_NAME as ThisTableID,
							FKCOLS.COLUMN_NAME                     as ThisColumn,
							PKCON.OWNER || '.' || PKCON.TABLE_NAME as OtherTableID,
							PKCOLS.COLUMN_NAME                     as OtherColumn,
							FKCOLS.POSITION                        as Ordinal
						FROM
							ALL_CONSTRAINTS FKCON
								JOIN ALL_CONS_COLUMNS FKCOLS ON
									FKCOLS.OWNER           = FKCON.OWNER      AND
									FKCOLS.TABLE_NAME      = FKCON.TABLE_NAME AND
									FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME
							JOIN
							ALL_CONSTRAINTS  PKCON
								JOIN ALL_CONS_COLUMNS PKCOLS ON
									PKCOLS.OWNER           = PKCON.OWNER      AND
									PKCOLS.TABLE_NAME      = PKCON.TABLE_NAME AND
									PKCOLS.CONSTRAINT_NAME = PKCON.CONSTRAINT_NAME
							ON
								PKCON.OWNER           = FKCON.R_OWNER AND
								PKCON.CONSTRAINT_NAME = FKCON.R_CONSTRAINT_NAME
						WHERE
							FKCON.CONSTRAINT_TYPE = 'R'          AND
							FKCOLS.POSITION       = PKCOLS.POSITION AND
							FKCON.OWNER IN ('IncludeExcludeSchemaTest') AND
							PKCON.OWNER IN ('IncludeExcludeSchemaTest')

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p.OWNER                                                                                                                              AS Owner,
	CASE WHEN p.OWNER = USER THEN 1 ELSE 0 END                                                                                           AS IsDefault,
	p.OVERLOAD                                                                                                                           AS Overload,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.OBJECT_NAME ELSE NULL END                                                                 AS PackageName,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.PROCEDURE_NAME ELSE p.OBJECT_NAME END                                                     AS ProcedureName,
	CASE WHEN a.DATA_TYPE IS NULL THEN 'PROCEDURE' WHEN a.DATA_TYPE = 'TABLE' THEN 'TABLE_FUNCTION' ELSE 'FUNCTION' END AS ProcedureType
FROM ALL_PROCEDURES p
	LEFT OUTER JOIN ALL_ARGUMENTS a ON
		a.OWNER = p.OWNER
			AND ((a.PACKAGE_NAME = p.OBJECT_NAME AND a.OBJECT_NAME = p.PROCEDURE_NAME)
				OR (a.PACKAGE_NAME IS NULL AND p.PROCEDURE_NAME IS NULL AND a.OBJECT_NAME = p.OBJECT_NAME))
			AND a.ARGUMENT_NAME IS NULL
			AND a.DATA_LEVEL = 0
WHERE ((p.OBJECT_TYPE IN ('PROCEDURE', 'FUNCTION') AND PROCEDURE_NAME IS NULL) OR PROCEDURE_NAME IS NOT NULL)
	AND p.OWNER IN ('IncludeExcludeSchemaTest')
ORDER BY
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.OBJECT_NAME ELSE NULL END,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.PROCEDURE_NAME ELSE p.OBJECT_NAME END

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	OWNER          AS Owner,
	PACKAGE_NAME   AS PackageName,
	OBJECT_NAME    AS ProcedureName,
	OVERLOAD       AS Overload,
	IN_OUT         AS Direction,
	DATA_LENGTH    AS DataLength,
	ARGUMENT_NAME  AS Name,
	DATA_TYPE      AS Type,
	POSITION       AS Ordinal,
	DATA_PRECISION AS Precision,
	DATA_SCALE     AS Scale
FROM ALL_ARGUMENTS
WHERE OWNER IN ('IncludeExcludeSchemaTest') AND SEQUENCE > 0 AND DATA_LEVEL = 0
	AND (DATA_TYPE <> 'TABLE' OR IN_OUT <> 'OUT' OR POSITION <> 0)

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
