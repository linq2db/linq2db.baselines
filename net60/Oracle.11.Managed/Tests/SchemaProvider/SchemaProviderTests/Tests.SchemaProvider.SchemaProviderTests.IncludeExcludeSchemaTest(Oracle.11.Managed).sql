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
						c.OWNER || '.' || c.TABLE_NAME             as TableID,
						c.COLUMN_NAME                              as Name,
						c.DATA_TYPE                                as DataType,
						CASE c.NULLABLE WHEN 'Y' THEN 1 ELSE 0 END as IsNullable,
						c.COLUMN_ID                                as Ordinal,
						c.DATA_LENGTH                              as Length,
						c.CHAR_LENGTH                              as CharLength,
						c.DATA_PRECISION                           as Precision,
						c.DATA_SCALE                               as Scale,
						0                                              as IsIdentity,
						cc.COMMENTS                                as Description
					FROM ALL_TAB_COLUMNS c
						JOIN ALL_COL_COMMENTS cc ON
							c.OWNER       = cc.OWNER      AND
							c.TABLE_NAME  = cc.TABLE_NAME AND
							c.COLUMN_NAME = cc.COLUMN_NAME
					WHERE c.OWNER IN ('SYSTEM')

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11


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
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.VALIDATE_CONTEXT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.VALIDATE_APEX

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @NAME Varchar2 -- String
SET     @NAME = ''
DECLARE @SUBNAME Varchar2 -- String
SET     @SUBNAME = ''
DECLARE @USR Varchar2 -- String
SET     @USR = ''
DECLARE @DBNAME Varchar2 -- String
SET     @DBNAME = ''
DECLARE @DBOWNER Varchar2 -- String
SET     @DBOWNER = ''
DECLARE @TXT Varchar2 -- String
SET     @TXT = ''

SYS.SUBPTXT2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
DECLARE @STATUS Int32
SET     @STATUS = 0

SYS.SUBPTXT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @NEW_TABLESPACE Varchar2 -- String
SET     @NEW_TABLESPACE = ''
DECLARE @NEW_TABLESPACE Varchar2 -- String
SET     @NEW_TABLESPACE = ''
DECLARE @NEW_TABLESPACE Varchar2 -- String
SET     @NEW_TABLESPACE = ''
DECLARE @NEW_TABLESPACE_IN Varchar2 -- String
SET     @NEW_TABLESPACE_IN = ''

SYS.SET_TABLESPACE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJECT_SCHEMA Varchar2 -- String
SET     @OBJECT_SCHEMA = ''
DECLARE @OBJECT_NAME Varchar2 -- String
SET     @OBJECT_NAME = ''
DECLARE @ENHRCHY Decimal(22)
SET     @ENHRCHY = 0

SYS.SETMODFLG

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.RESET_UNDO_STAT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TI 0 -- Object
SET     @TI = NULL

SYS.ODCITABFUNCINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @SO 0 -- Object
SET     @SO = NULL

SYS.ODCISTATSOPTIONSDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @QI 0 -- Object
SET     @QI = NULL

SYS.ODCIQUERYINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP 0 -- Object
SET     @OP = NULL

SYS.ODCIPREDINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PLIST Varchar2 -- String
SET     @PLIST = NULL

SYS.ODCIPARTINFOLISTDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PINFO 0 -- Object
SET     @PINFO = NULL

SYS.ODCIPARTINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXINFOFLAGSDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IA 0 -- Object
SET     @IA = NULL

SYS.ODCIINDEXINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXCALLPROPERTYDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXALTEROPTIONDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ENV 0 -- Object
SET     @ENV = NULL

SYS.ODCIENVDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCICOLINFOFLAGSDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CI 0 -- Object
SET     @CI = NULL

SYS.ODCICOLINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @AD Varchar2 -- String
SET     @AD = NULL

SYS.ODCIANYDATADUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TMPOWNERNAME Varchar2 -- String
SET     @TMPOWNERNAME = ''
DECLARE @TMPTABLENAME Varchar2 -- String
SET     @TMPTABLENAME = ''

SYS.MOVEXDB_TABLE_PART2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TMPOWNERNAME Varchar2 -- String
SET     @TMPOWNERNAME = ''
DECLARE @TMPTABLENAME Varchar2 -- String
SET     @TMPTABLENAME = ''
DECLARE @TARGET_TABLESPACE Varchar2 -- String
SET     @TARGET_TABLESPACE = ''
DECLARE @HASLOBBIT Varchar2 -- String
SET     @HASLOBBIT = NULL
DECLARE @OBJNUM Decimal(22)
SET     @OBJNUM = 0

SYS.MOVEXDB_TABLE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @LOGMNR_UID_IN Decimal(22)
SET     @LOGMNR_UID_IN = 0
DECLARE @REDO_THREAD_IN Decimal(22)
SET     @REDO_THREAD_IN = 0
DECLARE @END_SCN_BAS_IN Decimal(22)
SET     @END_SCN_BAS_IN = 0
DECLARE @END_SCN_WRP_IN Decimal(22)
SET     @END_SCN_WRP_IN = 0

SYS.LOGMNR_KRVRDREPDICT3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OPSTRING_IN Varchar2 -- String
SET     @OPSTRING_IN = ''
DECLARE @SESSION_NUM_IN Decimal(22)
SET     @SESSION_NUM_IN = 0
DECLARE @LOGMNR_UID_INOUT Decimal(22)
SET     @LOGMNR_UID_INOUT = 0
DECLARE @PLLD_THREAD_ID Decimal(22)
SET     @PLLD_THREAD_ID = 0
DECLARE @PLLD_END_SCN_BAS Decimal(22)
SET     @PLLD_END_SCN_BAS = 0
DECLARE @PLLD_END_SCN_WRP Decimal(22)
SET     @PLLD_END_SCN_WRP = 0

SYS.LOGMNR_KRVRDLUID3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @INLOGMNRUID Decimal(22)
SET     @INLOGMNRUID = 0
DECLARE @INSCNBAS Decimal(22)
SET     @INSCNBAS = 0
DECLARE @INSCNWRP Decimal(22)
SET     @INSCNWRP = 0
DECLARE @INREDOTHRD Decimal(22)
SET     @INREDOTHRD = 0
DECLARE @INRBASQN Decimal(22)
SET     @INRBASQN = 0
DECLARE @INRBABLK Decimal(22)
SET     @INRBABLK = 0
DECLARE @INRBABYTE Decimal(22)
SET     @INRBABYTE = 0
DECLARE @OUTAPPLY Decimal(22)
SET     @OUTAPPLY = 0

SYS.LOGMNR_KRVRDA_TEST_APPLY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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

SYS.LOGMNR_GTLO3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @QLEN Decimal(22)
SET     @QLEN = 0
DECLARE @UBKS Decimal(22)
SET     @UBKS = 0

SYS.LOAD_UNDO_STAT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @LOGMNRUID Decimal(22)
SET     @LOGMNRUID = 0
DECLARE @DUMMY Decimal(22)
SET     @DUMMY = 0

SYS.DBMS_LOGMNR_FFVTOLOGMNRT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_XDB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_WCR_REPLAY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_WCR_CAPTURE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_USER_MVS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_5

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CURRENT_VALUE Decimal(22)
SET     @CURRENT_VALUE = 0

SYS.DBMS_FEATURE_TEST_PROC_3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFENCRYPT_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFENCRYPT_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFDEDUP_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFDEDUP_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFCOMPRESS_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFCOMPRESS_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @HWM Decimal(22)
SET     @HWM = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SERVICES

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SEGADV_USER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SECUREFILES_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SECUREFILES_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RULESMANAGER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_ZLIB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_MEDIUM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_LOW

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_HIGH

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_BZIP2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_BASIC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RESOURCE_MANAGER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.DBMS_FEATURE_REGISTER_ALLHWM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.DBMS_FEATURE_REGISTER_ALLFEAT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @NODES Decimal(22)
SET     @NODES = 0
DECLARE @CLOB_REST Clob -- Object
SET     @CLOB_REST = ''

SYS.DBMS_FEATURE_RAC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @O_IS_USED Decimal(22)
SET     @O_IS_USED = 0
DECLARE @O_AUX_COUNT Decimal(22)
SET     @O_AUX_COUNT = 0
DECLARE @O_REPORT Clob -- Object
SET     @O_REPORT = ''

SYS.DBMS_FEATURE_PLSQL_NATIVE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @DATA_RATIO Decimal(22)
SET     @DATA_RATIO = 0
DECLARE @CLOB_REST Clob -- Object
SET     @CLOB_REST = ''

SYS.DBMS_FEATURE_PARTITION_USER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @DATA_RATIO Decimal(22)
SET     @DATA_RATIO = 0
DECLARE @CLOB_REST Clob -- Object
SET     @CLOB_REST = ''

SYS.DBMS_FEATURE_PARTITION_SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_OBJECT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_LMT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @NR_OF_JOBS Decimal(22)
SET     @NR_OF_JOBS = 0
DECLARE @SUMMARY Clob -- Object
SET     @SUMMARY = ''

SYS.DBMS_FEATURE_JOB_SCHEDULER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_HCC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_EXTENSIBILITY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @NUM_CELLS Decimal(22)
SET     @NUM_CELLS = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_EXADATA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DYN_SGA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DEFERRED_SEG_CRT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DATA_GUARD

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DATABASE_VAULT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_CDC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN_OUT Decimal(22)
SET     @FEATURE_BOOLEAN_OUT = 0
DECLARE @AUX_COUNT_OUT Decimal(22)
SET     @AUX_COUNT_OUT = 0
DECLARE @FEATURE_INFO_OUT Clob -- Object
SET     @FEATURE_INFO_OUT = ''

SYS.DBMS_FEATURE_AWR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTO_SSM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTO_SGA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTO_MEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTOSTA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @TOTAL_DISKGROUP_SIZE Decimal(22)
SET     @TOTAL_DISKGROUP_SIZE = 0
DECLARE @SUMMARY Clob -- Object
SET     @SUMMARY = ''

SYS.DBMS_FEATURE_ASM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_APEX

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJ_TYPE Varchar2 -- String
SET     @OBJ_TYPE = ''
DECLARE @OBJ_NAME Varchar2 -- String
SET     @OBJ_NAME = ''
DECLARE @OBJ_OWNER Varchar2 -- String
SET     @OBJ_OWNER = ''

SYS.AW_TRUNC_PROC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJ_TYPE Varchar2 -- String
SET     @OBJ_TYPE = ''
DECLARE @OBJ_NAME Varchar2 -- String
SET     @OBJ_NAME = ''
DECLARE @OBJ_OWNER Varchar2 -- String
SET     @OBJ_OWNER = ''

SYS.AW_REN_PROC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJ_TYPE Varchar2 -- String
SET     @OBJ_TYPE = ''
DECLARE @OBJ_NAME Varchar2 -- String
SET     @OBJ_NAME = ''
DECLARE @OBJ_OWNER Varchar2 -- String
SET     @OBJ_OWNER = ''

SYS.AW_DROP_PROC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYSTEM.TEST2132

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @POUTPUTINT Int32
SET     @POUTPUTINT = 0
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

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

OUTLN.ORA$GRANT_SYS_SELECT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OWNID Int32
SET     @OWNID = 0
DECLARE @ONAME Varchar2 -- String
SET     @ONAME = ''
DECLARE @IDXID Int32
SET     @IDXID = 0
DECLARE @IXPID Int32
SET     @IXPID = 0
DECLARE @RTABNM Varchar2 -- String
SET     @RTABNM = ''
DECLARE @SRCFLG Int32
SET     @SRCFLG = 0

CTXSYS.SYNCRN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TBS_NAME Varchar2 -- String
SET     @TBS_NAME = ''
DECLARE @PRINT_ONLY Varchar2 -- String
SET     @PRINT_ONLY = NULL

CTXSYS.DRI_MOVE_CTXSYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @SCHREF Varchar2 -- String
SET     @SCHREF = NULL
DECLARE @NAMESP Varchar2 -- String
SET     @NAMESP = ''

XDB.XDB$PATCHUPSCHEMA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @SCHREF Varchar2 -- String
SET     @SCHREF = NULL
DECLARE @HIDE Int32
SET     @HIDE = 0

XDB.XDB$PATCHUPDELETESCHEMA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

XDB.XDB$INITXDBSCHEMA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OWNER Varchar2 -- String
SET     @OWNER = ''
DECLARE @INDEX_NAME Varchar2 -- String
SET     @INDEX_NAME = ''

MDSYS.RESET_INPROG_INDEX

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

HR.SECURE_DML

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_EMP_ID Decimal(22)
SET     @P_EMP_ID = 0
DECLARE @P_START_DATE TimeStamp -- DateTime
SET     @P_START_DATE = TIMESTAMP '2020-09-23 00:00:00.000000'
DECLARE @P_END_DATE TimeStamp -- DateTime
SET     @P_END_DATE = TIMESTAMP '2020-09-23 00:00:00.000000'
DECLARE @P_JOB_ID Varchar2(10) -- String
SET     @P_JOB_ID = ''
DECLARE @P_DEPARTMENT_ID Decimal(22)
SET     @P_DEPARTMENT_ID = 0

HR.ADD_JOB_HISTORY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_URL Varchar2 -- String
SET     @P_URL = ''
DECLARE @P_CAT Varchar2 -- String
SET     @P_CAT = ''
DECLARE @P_ID Varchar2 -- String
SET     @P_ID = ''
DECLARE @P_USER Varchar2 -- String
SET     @P_USER = ''
DECLARE @P_COMPANY Varchar2 -- String
SET     @P_COMPANY = ''
DECLARE @P_WORKSPACE Varchar2 -- String
SET     @P_WORKSPACE = ''

APEX_040000.Z

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_FLOW_ID Varchar2 -- String
SET     @P_FLOW_ID = ''
DECLARE @P_LANGUAGE Varchar2 -- String
SET     @P_LANGUAGE = ''

APEX_040000.WWV_FLOW_SYNC_TRANSLATIONS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_FLOW_ID Varchar2 -- String
SET     @P_FLOW_ID = ''
DECLARE @P_LANGUAGE Varchar2 -- String
SET     @P_LANGUAGE = ''
DECLARE @P_INSERT_ONLY Varchar2 -- String
SET     @P_INSERT_ONLY = ''

APEX_040000.WWV_FLOW_SEED_TRANSLATIONS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

APEX_040000.WWV_FLOW_INIT_HTP_BUFFER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_COPY_FROM_ITEM_ID Decimal(22)
SET     @P_COPY_FROM_ITEM_ID = 0
DECLARE @P_COPY_TO_ITEM_NAME Varchar2 -- String
SET     @P_COPY_TO_ITEM_NAME = ''
DECLARE @P_COPY_TO_ITEM_SEQUENCE Varchar2 -- String
SET     @P_COPY_TO_ITEM_SEQUENCE = ''
DECLARE @P_COPY_TO_PAGE_ID Decimal(22)
SET     @P_COPY_TO_PAGE_ID = 0
DECLARE @P_COPY_TO_ITEM_PLUG Varchar2 -- String
SET     @P_COPY_TO_ITEM_PLUG = ''
DECLARE @P_COPY_TO_PROMPT Varchar2 -- String
SET     @P_COPY_TO_PROMPT = ''
DECLARE @P_COPY_TO_SOURCE_TYPE Varchar2 -- String
SET     @P_COPY_TO_SOURCE_TYPE = ''
DECLARE @P_COPY_TO_SOURCE Varchar2 -- String
SET     @P_COPY_TO_SOURCE = ''

APEX_040000.WWV_FLOW_COPY_PAGE_ITEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_LOV_ID_FROM Decimal(22)
SET     @P_LOV_ID_FROM = 0
DECLARE @P_LOV_NAME_TO Varchar2 -- String
SET     @P_LOV_NAME_TO = ''
DECLARE @P_COPY_FROM_FLOW_ID Decimal(22)
SET     @P_COPY_FROM_FLOW_ID = 0
DECLARE @P_FLOW_ID Decimal(22)
SET     @P_FLOW_ID = 0
DECLARE @P_LOV_ID_TO Decimal(22)
SET     @P_LOV_ID_TO = 0

APEX_040000.WWV_FLOW_COPY_LOV

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_BUTTON_ID_FROM Decimal(22)
SET     @P_BUTTON_ID_FROM = 0
DECLARE @P_BUTTON_NAME_TO Varchar2 -- String
SET     @P_BUTTON_NAME_TO = ''
DECLARE @P_BUTTON_TEXT_TO Varchar2 -- String
SET     @P_BUTTON_TEXT_TO = ''
DECLARE @P_BUTTON_PAGE_ID_TO Decimal(22)
SET     @P_BUTTON_PAGE_ID_TO = 0
DECLARE @P_BUTTON_REGION_TO Decimal(22)
SET     @P_BUTTON_REGION_TO = 0
DECLARE @P_BUTTON_SEQUENCE_TO Decimal(22)
SET     @P_BUTTON_SEQUENCE_TO = 0

APEX_040000.WWV_FLOW_COPY_BUTTON

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_FLOW_ID_FROM Decimal(22)
SET     @P_FLOW_ID_FROM = 0
DECLARE @P_FLOW_ID_TO Decimal(22)
SET     @P_FLOW_ID_TO = 0
DECLARE @P_ALIAS_TO Varchar2 -- String
SET     @P_ALIAS_TO = ''
DECLARE @P_FLOW_LANGUAGE_TO Varchar2 -- String
SET     @P_FLOW_LANGUAGE_TO = ''
DECLARE @P_OK_TO_DELETE_FLOW Varchar2 -- String
SET     @P_OK_TO_DELETE_FLOW = NULL
DECLARE @P_PERFORM_TRANSLATIONS Varchar2 -- String
SET     @P_PERFORM_TRANSLATIONS = NULL

APEX_040000.WWV_FLOW_COPY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P Varchar2 -- String
SET     @P = ''
DECLARE @P_SEP Varchar2 -- String
SET     @P_SEP = ''
DECLARE @P_TRACE Varchar2 -- String
SET     @P_TRACE = ''
DECLARE @P_DEBUG Varchar2 -- String
SET     @P_DEBUG = ''
DECLARE @TZ Varchar2 -- String
SET     @TZ = ''
DECLARE @P_LANG Varchar2 -- String
SET     @P_LANG = ''
DECLARE @P_TERRITORY Varchar2 -- String
SET     @P_TERRITORY = ''

APEX_040000.WS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @N Varchar2 -- String
SET     @N = ''
DECLARE @P_MIME_TYPE Varchar2 -- String
SET     @P_MIME_TYPE = ''
DECLARE @P_INLINE Varchar2 -- String
SET     @P_INLINE = ''

APEX_040000.P

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.HTMLDB_LOGIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

APEX_040000.HTMLDB_ADMIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.HTMLDB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P Varchar2 -- String
SET     @P = ''
DECLARE @P_SEP Varchar2 -- String
SET     @P_SEP = ''
DECLARE @P_TRACE Varchar2 -- String
SET     @P_TRACE = ''
DECLARE @C Varchar2 -- String
SET     @C = ''
DECLARE @PG_MIN_ROW Varchar2 -- String
SET     @PG_MIN_ROW = ''
DECLARE @PG_MAX_ROWS Varchar2 -- String
SET     @PG_MAX_ROWS = ''
DECLARE @PG_ROWS_FETCHED Varchar2 -- String
SET     @PG_ROWS_FETCHED = ''
DECLARE @FSP_REGION_ID Varchar2 -- String
SET     @FSP_REGION_ID = ''
DECLARE @SUCCESS_MSG Varchar2 -- String
SET     @SUCCESS_MSG = ''
DECLARE @NOTIFICATION_MSG Varchar2 -- String
SET     @NOTIFICATION_MSG = ''
DECLARE @CS Varchar2 -- String
SET     @CS = ''
DECLARE @S Varchar2 -- String
SET     @S = ''
DECLARE @TZ Varchar2 -- String
SET     @TZ = ''
DECLARE @P_LANG Varchar2 -- String
SET     @P_LANG = ''
DECLARE @P_TERRITORY Varchar2 -- String
SET     @P_TERRITORY = ''

APEX_040000.F

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.DEVELOPMENT_SERVICE_SIGNUP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.DEVELOPMENT_SERVICE_HOME_LOGIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.DEVELOPMENT_SERVICE_HOME

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

APEX_040000.APEX_ADMIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.APEX

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

select user from dual

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.VALIDATE_CONTEXT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.VALIDATE_APEX

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @NAME Varchar2 -- String
SET     @NAME = ''
DECLARE @SUBNAME Varchar2 -- String
SET     @SUBNAME = ''
DECLARE @USR Varchar2 -- String
SET     @USR = ''
DECLARE @DBNAME Varchar2 -- String
SET     @DBNAME = ''
DECLARE @DBOWNER Varchar2 -- String
SET     @DBOWNER = ''
DECLARE @TXT Varchar2 -- String
SET     @TXT = ''

SYS.SUBPTXT2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
DECLARE @STATUS Int32
SET     @STATUS = 0

SYS.SUBPTXT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @NEW_TABLESPACE Varchar2 -- String
SET     @NEW_TABLESPACE = ''
DECLARE @NEW_TABLESPACE Varchar2 -- String
SET     @NEW_TABLESPACE = ''
DECLARE @NEW_TABLESPACE Varchar2 -- String
SET     @NEW_TABLESPACE = ''
DECLARE @NEW_TABLESPACE_IN Varchar2 -- String
SET     @NEW_TABLESPACE_IN = ''

SYS.SET_TABLESPACE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJECT_SCHEMA Varchar2 -- String
SET     @OBJECT_SCHEMA = ''
DECLARE @OBJECT_NAME Varchar2 -- String
SET     @OBJECT_NAME = ''
DECLARE @ENHRCHY Decimal(22)
SET     @ENHRCHY = 0

SYS.SETMODFLG

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.RESET_UNDO_STAT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TI 0 -- Object
SET     @TI = NULL

SYS.ODCITABFUNCINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @SO 0 -- Object
SET     @SO = NULL

SYS.ODCISTATSOPTIONSDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @QI 0 -- Object
SET     @QI = NULL

SYS.ODCIQUERYINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP 0 -- Object
SET     @OP = NULL

SYS.ODCIPREDINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PLIST Varchar2 -- String
SET     @PLIST = NULL

SYS.ODCIPARTINFOLISTDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PINFO 0 -- Object
SET     @PINFO = NULL

SYS.ODCIPARTINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXINFOFLAGSDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IA 0 -- Object
SET     @IA = NULL

SYS.ODCIINDEXINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXCALLPROPERTYDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCIINDEXALTEROPTIONDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ENV 0 -- Object
SET     @ENV = NULL

SYS.ODCIENVDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OP Decimal(22)
SET     @OP = 0

SYS.ODCICOLINFOFLAGSDUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CI 0 -- Object
SET     @CI = NULL

SYS.ODCICOLINFODUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @AD Varchar2 -- String
SET     @AD = NULL

SYS.ODCIANYDATADUMP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TMPOWNERNAME Varchar2 -- String
SET     @TMPOWNERNAME = ''
DECLARE @TMPTABLENAME Varchar2 -- String
SET     @TMPTABLENAME = ''

SYS.MOVEXDB_TABLE_PART2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TMPOWNERNAME Varchar2 -- String
SET     @TMPOWNERNAME = ''
DECLARE @TMPTABLENAME Varchar2 -- String
SET     @TMPTABLENAME = ''
DECLARE @TARGET_TABLESPACE Varchar2 -- String
SET     @TARGET_TABLESPACE = ''
DECLARE @HASLOBBIT Varchar2 -- String
SET     @HASLOBBIT = NULL
DECLARE @OBJNUM Decimal(22)
SET     @OBJNUM = 0

SYS.MOVEXDB_TABLE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @LOGMNR_UID_IN Decimal(22)
SET     @LOGMNR_UID_IN = 0
DECLARE @REDO_THREAD_IN Decimal(22)
SET     @REDO_THREAD_IN = 0
DECLARE @END_SCN_BAS_IN Decimal(22)
SET     @END_SCN_BAS_IN = 0
DECLARE @END_SCN_WRP_IN Decimal(22)
SET     @END_SCN_WRP_IN = 0

SYS.LOGMNR_KRVRDREPDICT3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OPSTRING_IN Varchar2 -- String
SET     @OPSTRING_IN = ''
DECLARE @SESSION_NUM_IN Decimal(22)
SET     @SESSION_NUM_IN = 0
DECLARE @LOGMNR_UID_INOUT Decimal(22)
SET     @LOGMNR_UID_INOUT = 0
DECLARE @PLLD_THREAD_ID Decimal(22)
SET     @PLLD_THREAD_ID = 0
DECLARE @PLLD_END_SCN_BAS Decimal(22)
SET     @PLLD_END_SCN_BAS = 0
DECLARE @PLLD_END_SCN_WRP Decimal(22)
SET     @PLLD_END_SCN_WRP = 0

SYS.LOGMNR_KRVRDLUID3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @INLOGMNRUID Decimal(22)
SET     @INLOGMNRUID = 0
DECLARE @INSCNBAS Decimal(22)
SET     @INSCNBAS = 0
DECLARE @INSCNWRP Decimal(22)
SET     @INSCNWRP = 0
DECLARE @INREDOTHRD Decimal(22)
SET     @INREDOTHRD = 0
DECLARE @INRBASQN Decimal(22)
SET     @INRBASQN = 0
DECLARE @INRBABLK Decimal(22)
SET     @INRBABLK = 0
DECLARE @INRBABYTE Decimal(22)
SET     @INRBABYTE = 0
DECLARE @OUTAPPLY Decimal(22)
SET     @OUTAPPLY = 0

SYS.LOGMNR_KRVRDA_TEST_APPLY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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

SYS.LOGMNR_GTLO3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @QLEN Decimal(22)
SET     @QLEN = 0
DECLARE @UBKS Decimal(22)
SET     @UBKS = 0

SYS.LOAD_UNDO_STAT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @LOGMNRUID Decimal(22)
SET     @LOGMNRUID = 0
DECLARE @DUMMY Decimal(22)
SET     @DUMMY = 0

SYS.DBMS_LOGMNR_FFVTOLOGMNRT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_XDB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_WCR_REPLAY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_WCR_CAPTURE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_UTILITIES1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_USER_MVS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_5

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CURRENT_VALUE Decimal(22)
SET     @CURRENT_VALUE = 0

SYS.DBMS_FEATURE_TEST_PROC_3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_TEST_PROC_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFENCRYPT_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFENCRYPT_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFDEDUP_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFDEDUP_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFCOMPRESS_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SFCOMPRESS_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @HWM Decimal(22)
SET     @HWM = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SERVICES

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SEGADV_USER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SECUREFILES_USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_SECUREFILES_SYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RULESMANAGER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_ZLIB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_MEDIUM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_LOW

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_HIGH

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_BZIP2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RMAN_BASIC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_RESOURCE_MANAGER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.DBMS_FEATURE_REGISTER_ALLHWM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SYS.DBMS_FEATURE_REGISTER_ALLFEAT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @NODES Decimal(22)
SET     @NODES = 0
DECLARE @CLOB_REST Clob -- Object
SET     @CLOB_REST = ''

SYS.DBMS_FEATURE_RAC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @O_IS_USED Decimal(22)
SET     @O_IS_USED = 0
DECLARE @O_AUX_COUNT Decimal(22)
SET     @O_AUX_COUNT = 0
DECLARE @O_REPORT Clob -- Object
SET     @O_REPORT = ''

SYS.DBMS_FEATURE_PLSQL_NATIVE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @DATA_RATIO Decimal(22)
SET     @DATA_RATIO = 0
DECLARE @CLOB_REST Clob -- Object
SET     @CLOB_REST = ''

SYS.DBMS_FEATURE_PARTITION_USER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @DATA_RATIO Decimal(22)
SET     @DATA_RATIO = 0
DECLARE @CLOB_REST Clob -- Object
SET     @CLOB_REST = ''

SYS.DBMS_FEATURE_PARTITION_SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_OBJECT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_LMT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @NR_OF_JOBS Decimal(22)
SET     @NR_OF_JOBS = 0
DECLARE @SUMMARY Clob -- Object
SET     @SUMMARY = ''

SYS.DBMS_FEATURE_JOB_SCHEDULER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_HCC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_EXTENSIBILITY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @NUM_CELLS Decimal(22)
SET     @NUM_CELLS = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_EXADATA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DYN_SGA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DEFERRED_SEG_CRT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DATA_GUARD

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_DATABASE_VAULT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_CDC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN_OUT Decimal(22)
SET     @FEATURE_BOOLEAN_OUT = 0
DECLARE @AUX_COUNT_OUT Decimal(22)
SET     @AUX_COUNT_OUT = 0
DECLARE @FEATURE_INFO_OUT Clob -- Object
SET     @FEATURE_INFO_OUT = ''

SYS.DBMS_FEATURE_AWR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTO_SSM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTO_SGA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTO_MEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUTOSTA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_AUM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IS_USED Decimal(22)
SET     @IS_USED = 0
DECLARE @TOTAL_DISKGROUP_SIZE Decimal(22)
SET     @TOTAL_DISKGROUP_SIZE = 0
DECLARE @SUMMARY Clob -- Object
SET     @SUMMARY = ''

SYS.DBMS_FEATURE_ASM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FEATURE_BOOLEAN Decimal(22)
SET     @FEATURE_BOOLEAN = 0
DECLARE @AUX_COUNT Decimal(22)
SET     @AUX_COUNT = 0
DECLARE @FEATURE_INFO Clob -- Object
SET     @FEATURE_INFO = ''

SYS.DBMS_FEATURE_APEX

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJ_TYPE Varchar2 -- String
SET     @OBJ_TYPE = ''
DECLARE @OBJ_NAME Varchar2 -- String
SET     @OBJ_NAME = ''
DECLARE @OBJ_OWNER Varchar2 -- String
SET     @OBJ_OWNER = ''

SYS.AW_TRUNC_PROC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJ_TYPE Varchar2 -- String
SET     @OBJ_TYPE = ''
DECLARE @OBJ_NAME Varchar2 -- String
SET     @OBJ_NAME = ''
DECLARE @OBJ_OWNER Varchar2 -- String
SET     @OBJ_OWNER = ''

SYS.AW_REN_PROC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OBJ_TYPE Varchar2 -- String
SET     @OBJ_TYPE = ''
DECLARE @OBJ_NAME Varchar2 -- String
SET     @OBJ_NAME = ''
DECLARE @OBJ_OWNER Varchar2 -- String
SET     @OBJ_OWNER = ''

SYS.AW_DROP_PROC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

OUTLN.ORA$GRANT_SYS_SELECT

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OWNID Int32
SET     @OWNID = 0
DECLARE @ONAME Varchar2 -- String
SET     @ONAME = ''
DECLARE @IDXID Int32
SET     @IDXID = 0
DECLARE @IXPID Int32
SET     @IXPID = 0
DECLARE @RTABNM Varchar2 -- String
SET     @RTABNM = ''
DECLARE @SRCFLG Int32
SET     @SRCFLG = 0

CTXSYS.SYNCRN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @TBS_NAME Varchar2 -- String
SET     @TBS_NAME = ''
DECLARE @PRINT_ONLY Varchar2 -- String
SET     @PRINT_ONLY = NULL

CTXSYS.DRI_MOVE_CTXSYS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @SCHREF Varchar2 -- String
SET     @SCHREF = NULL
DECLARE @NAMESP Varchar2 -- String
SET     @NAMESP = ''

XDB.XDB$PATCHUPSCHEMA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @SCHREF Varchar2 -- String
SET     @SCHREF = NULL
DECLARE @HIDE Int32
SET     @HIDE = 0

XDB.XDB$PATCHUPDELETESCHEMA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

XDB.XDB$INITXDBSCHEMA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @OWNER Varchar2 -- String
SET     @OWNER = ''
DECLARE @INDEX_NAME Varchar2 -- String
SET     @INDEX_NAME = ''

MDSYS.RESET_INPROG_INDEX

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

HR.SECURE_DML

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_EMP_ID Decimal(22)
SET     @P_EMP_ID = 0
DECLARE @P_START_DATE TimeStamp -- DateTime
SET     @P_START_DATE = TIMESTAMP '2020-09-23 00:00:00.000000'
DECLARE @P_END_DATE TimeStamp -- DateTime
SET     @P_END_DATE = TIMESTAMP '2020-09-23 00:00:00.000000'
DECLARE @P_JOB_ID Varchar2(10) -- String
SET     @P_JOB_ID = ''
DECLARE @P_DEPARTMENT_ID Decimal(22)
SET     @P_DEPARTMENT_ID = 0

HR.ADD_JOB_HISTORY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_URL Varchar2 -- String
SET     @P_URL = ''
DECLARE @P_CAT Varchar2 -- String
SET     @P_CAT = ''
DECLARE @P_ID Varchar2 -- String
SET     @P_ID = ''
DECLARE @P_USER Varchar2 -- String
SET     @P_USER = ''
DECLARE @P_COMPANY Varchar2 -- String
SET     @P_COMPANY = ''
DECLARE @P_WORKSPACE Varchar2 -- String
SET     @P_WORKSPACE = ''

APEX_040000.Z

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_FLOW_ID Varchar2 -- String
SET     @P_FLOW_ID = ''
DECLARE @P_LANGUAGE Varchar2 -- String
SET     @P_LANGUAGE = ''

APEX_040000.WWV_FLOW_SYNC_TRANSLATIONS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_FLOW_ID Varchar2 -- String
SET     @P_FLOW_ID = ''
DECLARE @P_LANGUAGE Varchar2 -- String
SET     @P_LANGUAGE = ''
DECLARE @P_INSERT_ONLY Varchar2 -- String
SET     @P_INSERT_ONLY = ''

APEX_040000.WWV_FLOW_SEED_TRANSLATIONS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

APEX_040000.WWV_FLOW_INIT_HTP_BUFFER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_COPY_FROM_ITEM_ID Decimal(22)
SET     @P_COPY_FROM_ITEM_ID = 0
DECLARE @P_COPY_TO_ITEM_NAME Varchar2 -- String
SET     @P_COPY_TO_ITEM_NAME = ''
DECLARE @P_COPY_TO_ITEM_SEQUENCE Varchar2 -- String
SET     @P_COPY_TO_ITEM_SEQUENCE = ''
DECLARE @P_COPY_TO_PAGE_ID Decimal(22)
SET     @P_COPY_TO_PAGE_ID = 0
DECLARE @P_COPY_TO_ITEM_PLUG Varchar2 -- String
SET     @P_COPY_TO_ITEM_PLUG = ''
DECLARE @P_COPY_TO_PROMPT Varchar2 -- String
SET     @P_COPY_TO_PROMPT = ''
DECLARE @P_COPY_TO_SOURCE_TYPE Varchar2 -- String
SET     @P_COPY_TO_SOURCE_TYPE = ''
DECLARE @P_COPY_TO_SOURCE Varchar2 -- String
SET     @P_COPY_TO_SOURCE = ''

APEX_040000.WWV_FLOW_COPY_PAGE_ITEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_LOV_ID_FROM Decimal(22)
SET     @P_LOV_ID_FROM = 0
DECLARE @P_LOV_NAME_TO Varchar2 -- String
SET     @P_LOV_NAME_TO = ''
DECLARE @P_COPY_FROM_FLOW_ID Decimal(22)
SET     @P_COPY_FROM_FLOW_ID = 0
DECLARE @P_FLOW_ID Decimal(22)
SET     @P_FLOW_ID = 0
DECLARE @P_LOV_ID_TO Decimal(22)
SET     @P_LOV_ID_TO = 0

APEX_040000.WWV_FLOW_COPY_LOV

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_BUTTON_ID_FROM Decimal(22)
SET     @P_BUTTON_ID_FROM = 0
DECLARE @P_BUTTON_NAME_TO Varchar2 -- String
SET     @P_BUTTON_NAME_TO = ''
DECLARE @P_BUTTON_TEXT_TO Varchar2 -- String
SET     @P_BUTTON_TEXT_TO = ''
DECLARE @P_BUTTON_PAGE_ID_TO Decimal(22)
SET     @P_BUTTON_PAGE_ID_TO = 0
DECLARE @P_BUTTON_REGION_TO Decimal(22)
SET     @P_BUTTON_REGION_TO = 0
DECLARE @P_BUTTON_SEQUENCE_TO Decimal(22)
SET     @P_BUTTON_SEQUENCE_TO = 0

APEX_040000.WWV_FLOW_COPY_BUTTON

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_FLOW_ID_FROM Decimal(22)
SET     @P_FLOW_ID_FROM = 0
DECLARE @P_FLOW_ID_TO Decimal(22)
SET     @P_FLOW_ID_TO = 0
DECLARE @P_ALIAS_TO Varchar2 -- String
SET     @P_ALIAS_TO = ''
DECLARE @P_FLOW_LANGUAGE_TO Varchar2 -- String
SET     @P_FLOW_LANGUAGE_TO = ''
DECLARE @P_OK_TO_DELETE_FLOW Varchar2 -- String
SET     @P_OK_TO_DELETE_FLOW = NULL
DECLARE @P_PERFORM_TRANSLATIONS Varchar2 -- String
SET     @P_PERFORM_TRANSLATIONS = NULL

APEX_040000.WWV_FLOW_COPY

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P Varchar2 -- String
SET     @P = ''
DECLARE @P_SEP Varchar2 -- String
SET     @P_SEP = ''
DECLARE @P_TRACE Varchar2 -- String
SET     @P_TRACE = ''
DECLARE @P_DEBUG Varchar2 -- String
SET     @P_DEBUG = ''
DECLARE @TZ Varchar2 -- String
SET     @TZ = ''
DECLARE @P_LANG Varchar2 -- String
SET     @P_LANG = ''
DECLARE @P_TERRITORY Varchar2 -- String
SET     @P_TERRITORY = ''

APEX_040000.WS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @N Varchar2 -- String
SET     @N = ''
DECLARE @P_MIME_TYPE Varchar2 -- String
SET     @P_MIME_TYPE = ''
DECLARE @P_INLINE Varchar2 -- String
SET     @P_INLINE = ''

APEX_040000.P

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.HTMLDB_LOGIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

APEX_040000.HTMLDB_ADMIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.HTMLDB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P Varchar2 -- String
SET     @P = ''
DECLARE @P_SEP Varchar2 -- String
SET     @P_SEP = ''
DECLARE @P_TRACE Varchar2 -- String
SET     @P_TRACE = ''
DECLARE @C Varchar2 -- String
SET     @C = ''
DECLARE @PG_MIN_ROW Varchar2 -- String
SET     @PG_MIN_ROW = ''
DECLARE @PG_MAX_ROWS Varchar2 -- String
SET     @PG_MAX_ROWS = ''
DECLARE @PG_ROWS_FETCHED Varchar2 -- String
SET     @PG_ROWS_FETCHED = ''
DECLARE @FSP_REGION_ID Varchar2 -- String
SET     @FSP_REGION_ID = ''
DECLARE @SUCCESS_MSG Varchar2 -- String
SET     @SUCCESS_MSG = ''
DECLARE @NOTIFICATION_MSG Varchar2 -- String
SET     @NOTIFICATION_MSG = ''
DECLARE @CS Varchar2 -- String
SET     @CS = ''
DECLARE @S Varchar2 -- String
SET     @S = ''
DECLARE @TZ Varchar2 -- String
SET     @TZ = ''
DECLARE @P_LANG Varchar2 -- String
SET     @P_LANG = ''
DECLARE @P_TERRITORY Varchar2 -- String
SET     @P_TERRITORY = ''

APEX_040000.F

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.DEVELOPMENT_SERVICE_SIGNUP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.DEVELOPMENT_SERVICE_HOME_LOGIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.DEVELOPMENT_SERVICE_HOME

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

APEX_040000.APEX_ADMIN

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @P_SESSION Decimal(22)
SET     @P_SESSION = 0

APEX_040000.APEX

BeforeExecute
RollbackTransaction
BeforeExecute
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
						FKCOLS.OWNER IN ('IncludeExcludeSchemaTest')

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT VERSION FROM PRODUCT_COMPONENT_VERSION WHERE PRODUCT LIKE 'PL/SQL%'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11


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
						0                                              as IsIdentity,
						cc.COMMENTS                                as Description
					FROM ALL_TAB_COLUMNS c
						JOIN ALL_COL_COMMENTS cc ON
							c.OWNER       = cc.OWNER      AND
							c.TABLE_NAME  = cc.TABLE_NAME AND
							c.COLUMN_NAME = cc.COLUMN_NAME
					WHERE c.OWNER IN ('IncludeExcludeSchemaTest')

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11


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
BeginTransaction
BeforeExecute
RollbackTransaction
