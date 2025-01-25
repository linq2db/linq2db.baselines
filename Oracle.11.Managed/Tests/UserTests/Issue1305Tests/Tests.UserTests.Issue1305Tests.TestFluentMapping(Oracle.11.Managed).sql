BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT  VERSION from PRODUCT_COMPONENT_VERSION WHERE ROWNUM = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

select user from dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @CurrentUser Varchar2(4) -- String
SET     @CurrentUser = 'TEST'


					SELECT
						:CurrentUser || '.' || d.NAME as TableID,
						:CurrentUser                  as SchemaName,
						d.NAME                        as TableName,
						d.IsView                      as IsView,
						1                             as IsDefaultSchema,
						d.COMMENTS                    as Description
					FROM
					(
						SELECT NAME, ISVIEW, CASE c.MatView WHEN 1 THEN mvc.COMMENTS ELSE tc.COMMENTS END AS COMMENTS
						FROM
						(
							SELECT t.TABLE_NAME NAME, 0 as IsView, 0 as MatView FROM USER_TABLES t
								LEFT JOIN USER_MVIEWS tm ON t.TABLE_NAME = tm.CONTAINER_NAME
								WHERE tm.MVIEW_NAME IS NULL
							UNION ALL
							SELECT v.VIEW_NAME NAME, 1 as IsView, 0 as MatView FROM USER_VIEWS v
							UNION ALL
							SELECT m.MVIEW_NAME NAME, 1 as IsView, 1 as MatView FROM USER_MVIEWS m
						) c
							LEFT JOIN USER_TAB_COMMENTS tc ON c.NAME = tc.TABLE_NAME
							LEFT JOIN USER_MVIEW_COMMENTS mvc ON c.NAME = mvc.MVIEW_NAME
					) d
					ORDER BY TableID, isView
					

BeforeExecute
-- Oracle.11.Managed Oracle11


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
						FKCOLS.OWNER IN ('TEST')

BeforeExecute
-- Oracle.11.Managed Oracle11


					SELECT
						(SELECT USER FROM DUAL) || '.' || c.TABLE_NAME as TableID,
						c.COLUMN_NAME                                  as Name,
						c.DATA_TYPE                                    as DataType,
						CASE c.NULLABLE WHEN 'Y' THEN 1 ELSE 0 END     as IsNullable,
						c.COLUMN_ID                                    as Ordinal,
						c.DATA_LENGTH                                  as Length,
						c.CHAR_LENGTH                                  as CharLength,
						c.DATA_PRECISION                               as Precision,
						c.DATA_SCALE                                   as Scale,
						0                                              as IsIdentity,
						cc.COMMENTS                                    as Description
					FROM USER_TAB_COLUMNS c
						JOIN USER_COL_COMMENTS cc ON
							c.TABLE_NAME  = cc.TABLE_NAME AND
							c.COLUMN_NAME = cc.COLUMN_NAME
					

BeforeExecute
-- Oracle.11.Managed Oracle11


						SELECT
							FKCON.CONSTRAINT_NAME                    as Name,
							FKCON.OWNER || '.' || FKCON.TABLE_NAME   as ThisTableID,
							FKCOLS.COLUMN_NAME                       as ThisColumn,
							PKCOLS.OWNER || '.' || PKCOLS.TABLE_NAME as OtherTableID,
							PKCOLS.COLUMN_NAME                       as OtherColumn,
							FKCOLS.POSITION                          as Ordinal
						FROM
							USER_CONSTRAINTS FKCON
								JOIN USER_CONS_COLUMNS FKCOLS ON
									FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME
								JOIN USER_CONS_COLUMNS PKCOLS ON
									PKCOLS.CONSTRAINT_NAME = FKCON.R_CONSTRAINT_NAME
						WHERE
							FKCON.CONSTRAINT_TYPE = 'R' AND
							FKCOLS.POSITION       = PKCOLS.POSITION
						ORDER BY Ordinal, Name
						

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	USER                                                                                                                                 AS Owner,
	1                                                                                                                                    AS IsDefault,
	p.OVERLOAD                                                                                                                           AS Overload,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.OBJECT_NAME ELSE NULL END                                                                 AS PackageName,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.PROCEDURE_NAME ELSE p.OBJECT_NAME END                                                     AS ProcedureName,
	CASE WHEN a.DATA_TYPE IS NULL THEN 'PROCEDURE' WHEN a.DATA_TYPE = 'TABLE' THEN 'TABLE_FUNCTION' ELSE 'FUNCTION' END AS ProcedureType
FROM USER_PROCEDURES p
		LEFT OUTER JOIN USER_ARGUMENTS a ON
			((a.PACKAGE_NAME = p.OBJECT_NAME AND a.OBJECT_NAME = p.PROCEDURE_NAME)
					OR (a.PACKAGE_NAME IS NULL AND p.PROCEDURE_NAME IS NULL AND a.OBJECT_NAME = p.OBJECT_NAME))
				AND a.ARGUMENT_NAME IS NULL
				AND a.DATA_LEVEL = 0
WHERE ((p.OBJECT_TYPE IN ('PROCEDURE', 'FUNCTION') AND PROCEDURE_NAME IS NULL) OR PROCEDURE_NAME IS NOT NULL)
ORDER BY
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.OBJECT_NAME ELSE NULL END,
	CASE WHEN p.OBJECT_TYPE = 'PACKAGE' THEN p.PROCEDURE_NAME ELSE p.OBJECT_NAME END

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	USER           AS Owner,
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
WHERE SEQUENCE > 0 AND DATA_LEVEL = 0 AND OWNER = USER
	AND (DATA_TYPE <> 'TABLE' OR IN_OUT <> 'OUT' OR POSITION <> 0)

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

TEST.ISSUE2132.TEST

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @I Decimal(22)
SET     @I = 0
DECLARE @O Decimal(22)
SET     @O = 0

TEST.TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT * FROM TABLE(TEST.TEST_PACKAGE1.TEST_TABLE_FUNCTION(NULL))

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @I Decimal(22)
SET     @I = 0
DECLARE @O Decimal(22)
SET     @O = 0

TEST.TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT * FROM TABLE(TEST.TEST_PACKAGE2.TEST_TABLE_FUNCTION(NULL))

BeforeExecute
-- Oracle.11.Managed Oracle11

TEST.ADDISSUE792RECORD

BeforeExecute
-- Oracle.11.Managed Oracle11
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

TEST.ALLOUTPUTPARAMETERS

BeforeExecute
-- Oracle.11.Managed Oracle11
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

TEST.ARRAYTEST

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @PSTR NVarchar2 -- String
SET     @PSTR = ''
DECLARE @POUTPUTSTR NVarchar2 -- String
SET     @POUTPUTSTR = ''
DECLARE @PINPUTOUTPUTSTR NVarchar2 -- String
SET     @PINPUTOUTPUTSTR = ''

TEST.OUTREFENUMTEST

BeforeExecute
-- Oracle.11.Managed Oracle11
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

TEST.OUTREFTEST

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @PPERSONID Decimal(22)
SET     @PPERSONID = 0

TEST.PERSON_DELETE

BeforeExecute
-- Oracle.11.Managed Oracle11
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

TEST.PERSON_INSERT_OUTPUTPARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle11
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

TEST.PERSON_UPDATE

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @MR RefCursor -- Object
SET     @MR = NULL
DECLARE @SR RefCursor -- Object
SET     @SR = NULL

TEST.RESULTSETTEST

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @POUTPUTINTARRAY Varchar2 -- String
SET     @POUTPUTINTARRAY = NULL

TEST.SCALARARRAY

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @POUTPUTINT Int32
SET     @POUTPUTINT = 0
DECLARE @POUTPUTSTRING NVarchar2 -- String
SET     @POUTPUTSTRING = ''

TEST.SCALAR_OUTPUTPARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @I Decimal(22)
SET     @I = 0
DECLARE @O Decimal(22)
SET     @O = 0

TEST.TEST_PROCEDURE

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT * FROM TABLE(TEST.TEST_TABLE_FUNCTION(NULL))

BeforeExecute
RollbackTransaction
