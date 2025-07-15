BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {4000,4001,4002,4003,4004,4005,4006,4007}
-- value above truncated for logging
DECLARE @:p2 Decimal
SET     @:p2 = {1000,1001,1002,1003,1004,1005,1006,1007}
-- value above truncated for logging
DECLARE @:p3 TimeStamp -- DateTime
SET     @:p3 = {TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000',TIMESTAMP '2001-01-11 01:11:21.100000'}
-- value above truncated for logging
DECLARE @:p4 Int16
SET     @:p4 = {1,1,1,1,1,1,1,1}
-- value above truncated for logging
DECLARE @:p5 Raw -- Binary
SET     @:p5 = {HEXTORAW('99F33B231097794E873D2EC7BF1E0000'),HEXTORAW('99F33B231097794E873D2EC7BF1E0001'),HEXTORAW('99F33B231097794E873D2EC7BF1E0002'),HEXTORAW('99F33B231097794E873D2EC7BF1E0003'),HEXTORAW('99F33B231097794E873D2EC7BF1E0004'),HEXTORAW('99F33B231097794E873D2EC7BF1E0005'),HEXTORAW('99F33B231097794E873D2EC7BF1E0006'),HEXTORAW('99F33B231097794E873D2EC7BF1E0007')}
-- value above truncated for logging
DECLARE @:p6 Blob -- Object
SET     @:p6 = {NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL}
-- value above truncated for logging
DECLARE @:p7 Int16
SET     @:p7 = {0,1,2,3,4,5,6,7}
-- value above truncated for logging
DECLARE @:p8 Varchar2 -- String
SET     @:p8 = {NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL}
-- value above truncated for logging

INSERT INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (:p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" p
WHERE
	p.ID >= 4000

