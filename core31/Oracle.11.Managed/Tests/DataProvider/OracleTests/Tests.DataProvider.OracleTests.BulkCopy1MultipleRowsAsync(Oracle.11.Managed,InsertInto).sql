﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Int32
SET     @:p2 = System.Object[]
DECLARE @:p3 Int32
SET     @:p3 = System.Object[]
DECLARE @:p4 Varchar2 -- String
SET     @:p4 = System.Object[]
DECLARE @:p5 Varchar2 -- String
SET     @:p5 = System.Object[]
DECLARE @:p6 Int32
SET     @:p6 = System.Object[]
DECLARE @:p7 TimeStamp -- DateTime
SET     @:p7 = System.Object[]

INSERT INTO STG_TRADE_INFORMATION (STG_TRADE_ID, STG_TRADE_VERSION, INFORMATION_TYPE_ID, INFORMATION_TYPE_NAME, VALUE, VALUE_AS_INTEGER, VALUE_AS_DATE) VALUES (:p1, :p2, :p3, :p4, :p5, :p6, :p7)

