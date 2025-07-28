BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue",
	"StringValue"
)
VALUES
(4000,1000::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0000'::uuid,NULL,0,NULL),
(4001,1001::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0001'::uuid,NULL,1,NULL),
(4002,1002::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0002'::uuid,NULL,2,NULL),
(4003,1003::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0003'::uuid,NULL,3,NULL),
(4004,1004::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0004'::uuid,NULL,4,NULL),
(4005,1005::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0005'::uuid,NULL,5,NULL),
(4006,1006::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0006'::uuid,NULL,6,NULL),
(4007,1007::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0007'::uuid,NULL,7,NULL),
(4008,1008::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0008'::uuid,NULL,8,NULL),
(4009,1009::decimal(4),'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0009'::uuid,NULL,9,NULL)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

DELETE FROM
	"LinqDataTypes" p
WHERE
	p."ID" >= 4000

BeforeExecute
INSERT ASYNC BULK "LinqDataTypes"(ID, MoneyValue, DateTimeValue, BoolValue, GuidValue, BinaryValue, SmallIntValue, StringValue)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

DELETE FROM
	"LinqDataTypes" p
WHERE
	p."ID" >= 4000

