﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

select user from dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CurrentUser Varchar2(6) -- String
SET     @CurrentUser = 'SYSTEM'


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
-- Oracle.11.Managed Oracle.Managed Oracle11


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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT VERSION FROM PRODUCT_COMPONENT_VERSION WHERE PRODUCT LIKE 'PL/SQL%'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11


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
-- Oracle.11.Managed Oracle.Managed Oracle11


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
-- Oracle.11.Managed Oracle.Managed Oracle11

SYSTEM.TEST2132

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @POUTPUTINT Varchar2 -- String
SET     @POUTPUTINT = NULL
DECLARE @POUTPUTSTRING NVarchar2 -- String
SET     @POUTPUTSTRING = ''

SYSTEM.SCALAR_OUTPUTPARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @POUTPUTINTARRAY Varchar2 -- String
SET     @POUTPUTINTARRAY = NULL

SYSTEM.SCALARARRAY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @MR Varchar2 -- String
SET     @MR = NULL
DECLARE @SR Varchar2 -- String
SET     @SR = NULL

SYSTEM.RESULTSETTEST

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PPERSONID Decimal(22)
SET     @PPERSONID = 0

SYSTEM.PERSON_DELETE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PSTR NVarchar2 -- String
SET     @PSTR = ''
DECLARE @POUTPUTSTR NVarchar2 -- String
SET     @POUTPUTSTR = ''
DECLARE @PINPUTOUTPUTSTR NVarchar2 -- String
SET     @PINPUTOUTPUTSTR = ''

SYSTEM.OUTREFENUMTEST

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYSTEM.ORA$_SYS_REP_AUTH

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SYSTEM.ADDISSUE792RECORD

