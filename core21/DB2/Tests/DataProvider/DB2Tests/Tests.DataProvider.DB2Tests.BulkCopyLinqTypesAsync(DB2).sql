BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue",
	"StringValue"
)
VALUES
(4000,1000,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0000' as char(16) for bit data),NULL,0,NULL),
(4001,1001,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0001' as char(16) for bit data),NULL,1,NULL),
(4002,1002,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0002' as char(16) for bit data),NULL,2,NULL),
(4003,1003,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0003' as char(16) for bit data),NULL,3,NULL),
(4004,1004,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0004' as char(16) for bit data),NULL,4,NULL),
(4005,1005,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0005' as char(16) for bit data),NULL,5,NULL),
(4006,1006,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0006' as char(16) for bit data),NULL,6,NULL),
(4007,1007,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0007' as char(16) for bit data),NULL,7,NULL),
(4008,1008,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0008' as char(16) for bit data),NULL,8,NULL),
(4009,1009,'2001-01-11-01.11.21.100000',1,Cast(x'99f33b231097794e873d2ec7bf1e0009' as char(16) for bit data),NULL,9,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID >= 4000

BeforeExecute
INSERT BULK "LinqDataTypes"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID >= 4000

