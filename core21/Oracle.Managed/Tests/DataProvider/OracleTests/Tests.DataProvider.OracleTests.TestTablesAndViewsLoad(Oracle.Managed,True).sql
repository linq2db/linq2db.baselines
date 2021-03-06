﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.Managed Oracle12

select user from dual

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12


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
-- Oracle.Managed Oracle12

SELECT VERSION FROM PRODUCT_COMPONENT_VERSION WHERE PRODUCT LIKE 'PL/SQL%'

BeforeExecute
-- Oracle.Managed Oracle12


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
-- Oracle.Managed Oracle12


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
-- Oracle.Managed Oracle12
DECLARE @QLEN Decimal(22)
SET     @QLEN = 0
DECLARE @UBKS Decimal(22)
SET     @UBKS = 0

SYS.LOAD_UNDO_STAT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @LOGMNR_UID_IN Decimal(22)
SET     @LOGMNR_UID_IN = 0
DECLARE @OBJ__IN Decimal(22)
SET     @OBJ__IN = 0
DECLARE @OBJV__INOUT Decimal(22)
SET     @OBJV__INOUT = 0
DECLARE @LVLCNT_OUT Decimal(22)
SET     @LVLCNT_OUT = 0
DECLARE @BO__OUT Decimal(22)
SET     @BO__OUT = 0
DECLARE @LVL1OBJ__OUT Decimal(22)
SET     @LVL1OBJ__OUT = 0
DECLARE @LVL2OBJ__OUT Decimal(22)
SET     @LVL2OBJ__OUT = 0
DECLARE @LVL0TYPE__OUT Decimal(22)
SET     @LVL0TYPE__OUT = 0
DECLARE @LVL1TYPE__OUT Decimal(22)
SET     @LVL1TYPE__OUT = 0
DECLARE @LVL2TYPE__OUT Decimal(22)
SET     @LVL2TYPE__OUT = 0
DECLARE @OWNER__OUT Decimal(22)
SET     @OWNER__OUT = 0
DECLARE @OWNERNAME_OUT Varchar2 -- String
SET     @OWNERNAME_OUT = ''
DECLARE @LVL0NAME_OUT Varchar2 -- String
SET     @LVL0NAME_OUT = ''
DECLARE @LVL1NAME_OUT Varchar2 -- String
SET     @LVL1NAME_OUT = ''
DECLARE @LVL2NAME_OUT Varchar2 -- String
SET     @LVL2NAME_OUT = ''
DECLARE @ASSOC__OUT Decimal(22)
SET     @ASSOC__OUT = 0
DECLARE @COLS_OUT Decimal(22)
SET     @COLS_OUT = 0
DECLARE @INTCOLS_OUT Decimal(22)
SET     @INTCOLS_OUT = 0
DECLARE @KERNELCOLS_OUT Decimal(22)
SET     @KERNELCOLS_OUT = 0
DECLARE @TAB_FLAGS_OUT Decimal(22)
SET     @TAB_FLAGS_OUT = 0
DECLARE @TRIGFLAG_OUT Decimal(22)
SET     @TRIGFLAG_OUT = 0
DECLARE @OBJ_FLAGS_OUT Decimal(22)
SET     @OBJ_FLAGS_OUT = 0
DECLARE @TS__OUT Decimal(22)
SET     @TS__OUT = 0
DECLARE @TSNAME_OUT Varchar2 -- String
SET     @TSNAME_OUT = ''
DECLARE @PROPERTY_OUT Decimal(22)
SET     @PROPERTY_OUT = 0
DECLARE @UNSUPPORTEDCOLS_OUT Decimal(22)
SET     @UNSUPPORTEDCOLS_OUT = 0
DECLARE @LOGMNRMCV_OUT Varchar2 -- String
SET     @LOGMNRMCV_OUT = ''
DECLARE @COMPLEXTYPECOLS_OUT Decimal(22)
SET     @COMPLEXTYPECOLS_OUT = 0
DECLARE @NTPARENTOBJNUM_OUT Decimal(22)
SET     @NTPARENTOBJNUM_OUT = 0
DECLARE @NTPARENTOBJVERSION_OUT Decimal(22)
SET     @NTPARENTOBJVERSION_OUT = 0
DECLARE @NTPARENTINTCOLNUM_OUT Decimal(22)
SET     @NTPARENTINTCOLNUM_OUT = 0
DECLARE @TLOFLAGS_OUT Decimal(22)
SET     @TLOFLAGS_OUT = 0
DECLARE @PARTTYPE_OUT Decimal(22)
SET     @PARTTYPE_OUT = 0
DECLARE @SUBPARTTYPE_OUT Decimal(22)
SET     @SUBPARTTYPE_OUT = 0
DECLARE @QUERYSOURCE Decimal(22)
SET     @QUERYSOURCE = 0
DECLARE @AS_OF_SCN_IN Decimal(22)
SET     @AS_OF_SCN_IN = 0
DECLARE @FLAGS_FAST_START Decimal(22)
SET     @FLAGS_FAST_START = 0
DECLARE @ACDRFLAGS_OUT Decimal(22)
SET     @ACDRFLAGS_OUT = 0
DECLARE @ACDRTSOBJ__OUT Decimal(22)
SET     @ACDRTSOBJ__OUT = 0
DECLARE @ACDRROWTSINTCOL__OUT Decimal(22)
SET     @ACDRROWTSINTCOL__OUT = 0

SYS.LOGMNR_GTLO3

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @AD Varchar2 -- String
SET     @AD = NULL

SYS.ODCIANYDATADUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @CI 0 -- Object
SET     @CI = NULL

SYS.ODCICOLINFODUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ENV 0 -- Object
SET     @ENV = NULL

SYS.ODCIENVDUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXALTEROPTIONDUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXCALLPROPERTYDUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @IA 0 -- Object
SET     @IA = NULL

SYS.ODCIINDEXINFODUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXINFOFLAGSDUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @PINFO 0 -- Object
SET     @PINFO = NULL

SYS.ODCIPARTINFODUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @PLIST Varchar2 -- String
SET     @PLIST = NULL

SYS.ODCIPARTINFOLISTDUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OP 0 -- Object
SET     @OP = NULL

SYS.ODCIPREDINFODUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @QI 0 -- Object
SET     @QI = NULL

SYS.ODCIQUERYINFODUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SO 0 -- Object
SET     @SO = NULL

SYS.ODCISTATSOPTIONSDUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @TI 0 -- Object
SET     @TI = NULL

SYS.ODCITABFUNCINFODUMP

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @DRIVERVERSION Varchar2 -- String
SET     @DRIVERVERSION = ''
DECLARE @SERVERVERSION Varchar2 -- String
SET     @SERVERVERSION = ''

SYS.OLAPIHANDSHAKE2

BeforeExecute
-- Oracle.Managed Oracle12

SYS.RESET_UNDO_STAT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @CONTEXT Blob -- Object
SET     @CONTEXT = NULL
DECLARE @REGINFO 0 -- Object
SET     @REGINFO = NULL
DECLARE @DESCR 0 -- Object
SET     @DESCR = NULL
DECLARE @PAYLOAD Blob -- Object
SET     @PAYLOAD = NULL
DECLARE @PAYLOADL Decimal(22)
SET     @PAYLOADL = 0

SYS.SCHEDULER$NTFY_SVC_METRICS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @CONTEXT Blob -- Object
SET     @CONTEXT = NULL
DECLARE @REGINFO 0 -- Object
SET     @REGINFO = NULL
DECLARE @DESCR 0 -- Object
SET     @DESCR = NULL
DECLARE @PAYLOAD Blob -- Object
SET     @PAYLOAD = NULL
DECLARE @PAYLOADL Decimal(22)
SET     @PAYLOADL = 0

SYS.SCHEDULER$_JOB_EVENT_HANDLER

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OBJECT_SCHEMA Varchar2 -- String
SET     @OBJECT_SCHEMA = ''
DECLARE @OBJECT_NAME Varchar2 -- String
SET     @OBJECT_NAME = ''
DECLARE @ENHRCHY Decimal(22)
SET     @ENHRCHY = 0

SYS.SETMODFLG

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @NAME Varchar2 -- String
SET     @NAME = ''
DECLARE @NAME Varchar2 -- String
SET     @NAME = ''
DECLARE @SUBNAME Varchar2 -- String
SET     @SUBNAME = ''
DECLARE @SUBNAME Varchar2 -- String
SET     @SUBNAME = ''
DECLARE @USR Varchar2 -- String
SET     @USR = ''
DECLARE @USR Varchar2 -- String
SET     @USR = ''
DECLARE @DBNAME Varchar2 -- String
SET     @DBNAME = ''
DECLARE @TXT Varchar2 -- String
SET     @TXT = ''
DECLARE @DBOWNER Varchar2 -- String
SET     @DBOWNER = ''
DECLARE @TXT Varchar2 -- String
SET     @TXT = ''
DECLARE @STATUS Varchar2 -- String
SET     @STATUS = NULL

SYS.SUBPTXT

BeforeExecute
-- Oracle.Managed Oracle12

SYSTEM.ADDISSUE792RECORD

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
DECLARE @PSTR NVarchar2 -- String
SET     @PSTR = ''
DECLARE @POUTPUTSTR NVarchar2 -- String
SET     @POUTPUTSTR = ''
DECLARE @PINPUTOUTPUTSTR NVarchar2 -- String
SET     @PINPUTOUTPUTSTR = ''

SYSTEM.OUTREFENUMTEST

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
DECLARE @PPERSONID Decimal(22)
SET     @PPERSONID = 0

SYSTEM.PERSON_DELETE

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
DECLARE @MR Varchar2 -- String
SET     @MR = NULL
DECLARE @SR Varchar2 -- String
SET     @SR = NULL

SYSTEM.RESULTSETTEST

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @POUTPUTINTARRAY Varchar2 -- String
SET     @POUTPUTINTARRAY = NULL

SYSTEM.SCALARARRAY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @POUTPUTINT Varchar2 -- String
SET     @POUTPUTINT = NULL
DECLARE @POUTPUTSTRING NVarchar2 -- String
SET     @POUTPUTSTRING = ''

SYSTEM.SCALAR_OUTPUTPARAMETER

BeforeExecute
-- Oracle.Managed Oracle12

SYSTEM.TEST2132

BeforeExecute
-- Oracle.Managed Oracle12

OUTLN.ORA$GRANT_SYS_SELECT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @DDLID Decimal(22)
SET     @DDLID = 0
DECLARE @SCHEMA_NAME Varchar2 -- String
SET     @SCHEMA_NAME = ''
DECLARE @DDL_TEXT Clob -- Object
SET     @DDL_TEXT = ''
DECLARE @OPERATION_TYPE Char -- AnsiStringFixedLength
SET     @OPERATION_TYPE = ''
DECLARE @PARAMS Varchar2 -- String
SET     @PARAMS = ''
DECLARE @DDLACTION Decimal(22)
SET     @DDLACTION = 0

GSMADMIN_INTERNAL.EXECUTEDDL

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SQL_TEXT Varchar2 -- String
SET     @SQL_TEXT = ''
DECLARE @SCHEMA_NAME Varchar2 -- String
SET     @SCHEMA_NAME = ''

GSMADMIN_INTERNAL.EXEC_SQL

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @HOSTNAME Varchar2 -- String
SET     @HOSTNAME = ''
DECLARE @CERTIFICATE Varchar2 -- String
SET     @CERTIFICATE = ''
DECLARE @CURRENT_DATE Varchar2 -- String
SET     @CURRENT_DATE = ''
DECLARE @PASSWORD_HASH Varchar2 -- String
SET     @PASSWORD_HASH = ''
DECLARE @PORT Varchar2 -- String
SET     @PORT = ''
DECLARE @NONCE Varchar2 -- String
SET     @NONCE = ''
DECLARE @ENC_KEY Varchar2 -- String
SET     @ENC_KEY = ''
DECLARE @KEY_HASH Varchar2 -- String
SET     @KEY_HASH = ''
DECLARE @AGENT_NAME Varchar2 -- String
SET     @AGENT_NAME = ''

REMOTE_SCHEDULER_AGENT.ADD_AGENT_CERTIFICATE

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @AGENT_VERSION Varchar2 -- String
SET     @AGENT_VERSION = ''
DECLARE @DB_VERSION Varchar2 -- String
SET     @DB_VERSION = ''
DECLARE @VALID Varchar2 -- String
SET     @VALID = NULL

REMOTE_SCHEDULER_AGENT.CHECK_AGENT_VERSION

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @HOSTNAME Varchar2 -- String
SET     @HOSTNAME = ''

REMOTE_SCHEDULER_AGENT.FILEWATCH_REQUEST_RESEND

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @HOSTNAME Varchar2 -- String
SET     @HOSTNAME = ''
DECLARE @CERTIFICATE Varchar2 -- String
SET     @CERTIFICATE = ''
DECLARE @CURRENT_DATE Varchar2 -- String
SET     @CURRENT_DATE = ''
DECLARE @PASSWORD_HASH Varchar2 -- String
SET     @PASSWORD_HASH = ''

REMOTE_SCHEDULER_AGENT.REGISTER_AGENT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @HOSTNAME Varchar2 -- String
SET     @HOSTNAME = ''
DECLARE @CERTIFICATE Varchar2 -- String
SET     @CERTIFICATE = ''
DECLARE @CURRENT_DATE Varchar2 -- String
SET     @CURRENT_DATE = ''
DECLARE @PASSWORD_HASH Varchar2 -- String
SET     @PASSWORD_HASH = ''
DECLARE @PORT Varchar2 -- String
SET     @PORT = ''
DECLARE @NONCE Varchar2 -- String
SET     @NONCE = ''
DECLARE @ENC_KEY Varchar2 -- String
SET     @ENC_KEY = ''
DECLARE @KEY_HASH Varchar2 -- String
SET     @KEY_HASH = ''
DECLARE @AGENT_NAME Varchar2 -- String
SET     @AGENT_NAME = ''

REMOTE_SCHEDULER_AGENT.REGISTER_AGENT2

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @HOSTNAME Varchar2 -- String
SET     @HOSTNAME = ''
DECLARE @CERTIFICATE Varchar2 -- String
SET     @CERTIFICATE = ''
DECLARE @CURRENT_DATE Varchar2 -- String
SET     @CURRENT_DATE = ''
DECLARE @PASSWORD_HASH Varchar2 -- String
SET     @PASSWORD_HASH = ''
DECLARE @PORT Varchar2 -- String
SET     @PORT = ''
DECLARE @NONCE Varchar2 -- String
SET     @NONCE = ''
DECLARE @ENC_KEY Varchar2 -- String
SET     @ENC_KEY = ''
DECLARE @KEY_HASH Varchar2 -- String
SET     @KEY_HASH = ''
DECLARE @AGENT_NAME Varchar2 -- String
SET     @AGENT_NAME = ''
DECLARE @AGENT_VERSION Varchar2 -- String
SET     @AGENT_VERSION = ''

REMOTE_SCHEDULER_AGENT.REGISTER_AGENT3

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @AGENT_VERSION Varchar2 -- String
SET     @AGENT_VERSION = ''

REMOTE_SCHEDULER_AGENT.REG_START

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @NAME_ARRAY Varchar2 -- String
SET     @NAME_ARRAY = NULL
DECLARE @VALUE_ARRAY Varchar2 -- String
SET     @VALUE_ARRAY = NULL

REMOTE_SCHEDULER_AGENT.SUBMIT_FILEWATCH_RESULTS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @JOB_OWNER Varchar2 -- String
SET     @JOB_OWNER = ''
DECLARE @JOB_NAME Varchar2 -- String
SET     @JOB_NAME = ''
DECLARE @JOB_SUBNAME Varchar2 -- String
SET     @JOB_SUBNAME = ''
DECLARE @START_DATE Varchar2 -- String
SET     @START_DATE = ''
DECLARE @RUN_DURATION Varchar2 -- String
SET     @RUN_DURATION = ''
DECLARE @CPU_USED Varchar2 -- String
SET     @CPU_USED = ''
DECLARE @ERROR_NUMBER Varchar2 -- String
SET     @ERROR_NUMBER = ''
DECLARE @ERROR_TEXT Varchar2 -- String
SET     @ERROR_TEXT = ''
DECLARE @OUTPUT_TEXT Varchar2 -- String
SET     @OUTPUT_TEXT = ''
DECLARE @REQUEST_ID Varchar2 -- String
SET     @REQUEST_ID = ''
DECLARE @ADD_INFO Varchar2 -- String
SET     @ADD_INFO = ''
DECLARE @SUBMIT Varchar2 -- String
SET     @SUBMIT = ''

REMOTE_SCHEDULER_AGENT.SUBMIT_JOB_RESULTS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @AGENT_HOST Varchar2 -- String
SET     @AGENT_HOST = ''
DECLARE @JOB_RESULTS Varchar2 -- String
SET     @JOB_RESULTS = ''
DECLARE @NONCE Varchar2 -- String
SET     @NONCE = ''
DECLARE @CURRENT_DATE Varchar2 -- String
SET     @CURRENT_DATE = ''
DECLARE @AGENT_NAME Varchar2 -- String
SET     @AGENT_NAME = ''
DECLARE @SUBMIT Varchar2 -- String
SET     @SUBMIT = ''

REMOTE_SCHEDULER_AGENT.SUBMIT_JOB_RESULTS2

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @AGENT_HOST Varchar2 -- String
SET     @AGENT_HOST = ''
DECLARE @AGENT_NAME Varchar2 -- String
SET     @AGENT_NAME = ''
DECLARE @CURRENT_DATE Varchar2 -- String
SET     @CURRENT_DATE = ''
DECLARE @NONCE Varchar2 -- String
SET     @NONCE = ''
DECLARE @HASH Varchar2 -- String
SET     @HASH = ''

REMOTE_SCHEDULER_AGENT.UNREGISTER_AGENT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SRC Varchar2 -- String
SET     @SRC = ''

DBSNMP.MGMT_UPDATE_DB_FEATURE_LOG

BeforeExecute
-- Oracle.Managed Oracle12

XDB.XDB$INITXDBSCHEMA

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SCHOID Blob -- Object
SET     @SCHOID = NULL
DECLARE @HIDE Varchar2 -- String
SET     @HIDE = NULL

XDB.XDB$PATCHUPDELETESCHEMA

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SCHREF Varchar2 -- String
SET     @SCHREF = NULL
DECLARE @NAMESP Varchar2 -- String
SET     @NAMESP = ''

XDB.XDB$PATCHUPSCHEMA

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @RID Varchar2(256) -- String
SET     @RID = ''
DECLARE @RID Varchar2(256) -- String
SET     @RID = ''
DECLARE @OUTLOB Clob -- Object
SET     @OUTLOB = ''
DECLARE @OUTLOB Clob -- Object
SET     @OUTLOB = ''

XDB.XDB_DATASTORE_PROC

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OLD_VERSION Varchar2 -- String
SET     @OLD_VERSION = ''

WMSYS.VALIDATE_OWM

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @TBS_NAME Varchar2 -- String
SET     @TBS_NAME = ''
DECLARE @PRINT_ONLY Varchar2 -- String
SET     @PRINT_ONLY = NULL

CTXSYS.DRI_MOVE_CTXSYS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OWNID Varchar2 -- String
SET     @OWNID = NULL
DECLARE @ONAME Varchar2 -- String
SET     @ONAME = ''
DECLARE @IDXID Varchar2 -- String
SET     @IDXID = NULL
DECLARE @IXPID Varchar2 -- String
SET     @IXPID = NULL
DECLARE @RTABNM Varchar2 -- String
SET     @RTABNM = ''
DECLARE @SRCFLG Varchar2 -- String
SET     @SRCFLG = NULL
DECLARE @SMALLR Varchar2 -- String
SET     @SMALLR = NULL

CTXSYS.SYNCRN

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FEATURE 0 -- Object
SET     @FEATURE = NULL
DECLARE @COLOR 0 -- Object
SET     @COLOR = NULL
DECLARE @FREQUENCY Decimal(22)
SET     @FREQUENCY = 0

ORDSYS.SI_APPENDCLRHSTGR

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @IMAGE 0 -- Object
SET     @IMAGE = NULL
DECLARE @CONTENT Blob -- Object
SET     @CONTENT = NULL

ORDSYS.SI_CHGCONTENT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @IMAGE 0 -- Object
SET     @IMAGE = NULL
DECLARE @TARGETFORMAT Varchar2 -- String
SET     @TARGETFORMAT = ''

ORDSYS.SI_CONVERTFORMAT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FEATURELIST 0 -- Object
SET     @FEATURELIST = NULL
DECLARE @AVERAGECOLORFEATURE 0 -- Object
SET     @AVERAGECOLORFEATURE = NULL
DECLARE @AVERAGECOLORFEATUREWGHT Decimal(22)
SET     @AVERAGECOLORFEATUREWGHT = 0

ORDSYS.SI_SETAVGCLRFTR

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FEATURELIST 0 -- Object
SET     @FEATURELIST = NULL
DECLARE @COLORHISTOGRAMFEATURE 0 -- Object
SET     @COLORHISTOGRAMFEATURE = NULL
DECLARE @COLORHISTOGRAMFEATUREWGHT Decimal(22)
SET     @COLORHISTOGRAMFEATUREWGHT = 0

ORDSYS.SI_SETCLRHSTGRFTR

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FEATURELIST 0 -- Object
SET     @FEATURELIST = NULL
DECLARE @POSITIONALCOLORFEATURE 0 -- Object
SET     @POSITIONALCOLORFEATURE = NULL
DECLARE @POSITIONALCOLORFEATUREWGHT Decimal(22)
SET     @POSITIONALCOLORFEATUREWGHT = 0

ORDSYS.SI_SETPSTNLCLRFTR

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FEATURELIST 0 -- Object
SET     @FEATURELIST = NULL
DECLARE @TEXTUREFEATURE 0 -- Object
SET     @TEXTUREFEATURE = NULL
DECLARE @TEXTUREFEATUREWGHT Decimal(22)
SET     @TEXTUREFEATUREWGHT = 0

ORDSYS.SI_SETTEXTUREFTR

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @DEST Decimal(22)
SET     @DEST = 0
DECLARE @MASK Decimal(22)
SET     @MASK = 0

MDSYS.BITOR

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SZ Decimal(22)
SET     @SZ = 0
DECLARE @SZ Decimal(22)
SET     @SZ = 0

MDSYS.ELOCATIONSETJVMHEAPSIZE

BeforeExecute
-- Oracle.Managed Oracle12

MDSYS.ENABLEGEORASTER

BeforeExecute
-- Oracle.Managed Oracle12

MDSYS.LOAD_PREDEFINED_RULEBASES

BeforeExecute
-- Oracle.Managed Oracle12

MDSYS.RDF$GRANT_OLS_PRIVS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @OWNER Varchar2 -- String
SET     @OWNER = ''
DECLARE @INDEX_NAME Varchar2 -- String
SET     @INDEX_NAME = ''

MDSYS.RESET_INPROG_INDEX

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @P_RULE_SET Varchar2 -- String
SET     @P_RULE_SET = ''
DECLARE @X_RESULT Decimal(22)
SET     @X_RESULT = 0
DECLARE @X_RULE Varchar2 -- String
SET     @X_RULE = ''
DECLARE @X_RULE_ERROR Decimal(22)
SET     @X_RULE_ERROR = 0
DECLARE @X_HANDLER_ERROR Decimal(22)
SET     @X_HANDLER_ERROR = 0
DECLARE @X_ERROR_CODE Decimal(22)
SET     @X_ERROR_CODE = 0
DECLARE @X_ERROR_TEXT Varchar2 -- String
SET     @X_ERROR_TEXT = ''

DVSYS.EVALUATE_RULE_SET

BeforeExecute
-- Oracle.Managed Oracle12

DVSYS.MACOLS_INIT_SESSION

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @P_FACTOR Varchar2 -- String
SET     @P_FACTOR = ''
DECLARE @P_FACTOR Varchar2 -- String
SET     @P_FACTOR = ''
DECLARE @P_VALUE Varchar2 -- String
SET     @P_VALUE = ''
DECLARE @P_VALUE Varchar2 -- String
SET     @P_VALUE = ''

DVSYS.SET_FACTOR

BeforeExecute
-- Oracle.Managed Oracle12

LBACSYS.CODE_COVERAGE

BeforeExecute
-- Oracle.Managed Oracle12

LBACSYS.CONFIGURE_OLS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SCHEMA_NAME Varchar2 -- String
SET     @SCHEMA_NAME = ''
DECLARE @TABLE_NAME Varchar2 -- String
SET     @TABLE_NAME = ''
DECLARE @OPTIONS Varchar2 -- String
SET     @OPTIONS = NULL

LBACSYS.DP_ADD_RLS_POLICY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @SCHEMA_NAME Varchar2 -- String
SET     @SCHEMA_NAME = ''
DECLARE @TABLE_NAME Varchar2 -- String
SET     @TABLE_NAME = ''
DECLARE @OPTIONS Varchar2 -- String
SET     @OPTIONS = NULL

LBACSYS.DP_DROP_RLS_POLICY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

LBACSYS.FEATURE_USAGE

BeforeExecute
-- Oracle.Managed Oracle12

LBACSYS.LBAC_FRAME_GRANT

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @UNAME Varchar2 -- String
SET     @UNAME = ''

LBACSYS.OLS_INIT_SESSION

BeforeExecute
-- Oracle.Managed Oracle12

LBACSYS.SA_POLICY_GRANT

BeforeExecute
-- Oracle.Managed Oracle12

LBACSYS.SESSINFO_CLEANUP

