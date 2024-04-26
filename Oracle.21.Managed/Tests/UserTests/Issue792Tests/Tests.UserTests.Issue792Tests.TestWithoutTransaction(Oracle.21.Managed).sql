﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT  VERSION from PRODUCT_COMPONENT_VERSION WHERE ROWNUM = 1

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

SELECT
	COUNT(*)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"AllTypes" t1
WHERE
	t1."char20DataType" = 'issue792'

