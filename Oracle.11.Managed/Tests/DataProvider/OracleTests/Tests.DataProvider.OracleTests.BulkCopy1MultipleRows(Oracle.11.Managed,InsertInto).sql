﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @:p1 Int32
SET     @:p1 = {375,328,348,357,371,333,353,973}
DECLARE @:p2 Int32
SET     @:p2 = {1,1,1,1,1,1,1,1}
DECLARE @:p3 Int32
SET     @:p3 = {20224,20224,20224,20224,20224,20224,20224,20160}
DECLARE @:p4 Varchar2 -- String
SET     @:p4 = {'Gas Month','Gas Month','Gas Month','Gas Month','Gas Month','Gas Month','Gas Month','EU Allowances'}
DECLARE @:p5 Varchar2 -- String
SET     @:p5 = {NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL}
DECLARE @:p6 Int32
SET     @:p6 = {NULL,NULL,NULL,NULL,NULL,1,1000000000,NULL}
DECLARE @:p7 TimeStamp -- DateTime
SET     @:p7 = {NULL,NULL,NULL,NULL,NULL,TIMESTAMP '2011-01-05 00:00:00.000000',NULL,NULL}

INSERT INTO STG_TRADE_INFORMATION (STG_TRADE_ID, STG_TRADE_VERSION, INFORMATION_TYPE_ID, INFORMATION_TYPE_NAME, VALUE, VALUE_AS_INTEGER, VALUE_AS_DATE) VALUES (:p1, :p2, :p3, :p4, :p5, :p6, :p7)

