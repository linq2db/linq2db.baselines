-- PostgreSQL.15 PostgreSQL

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
(4000,1000,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0000'::uuid,NULL,0,NULL),
(4001,1001,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0001'::uuid,NULL,1,NULL),
(4002,1002,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0002'::uuid,NULL,2,NULL),
(4003,1003,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0003'::uuid,NULL,3,NULL),
(4004,1004,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0004'::uuid,NULL,4,NULL),
(4005,1005,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0005'::uuid,NULL,5,NULL),
(4006,1006,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0006'::uuid,NULL,6,NULL),
(4007,1007,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0007'::uuid,NULL,7,NULL),
(4008,1008,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0008'::uuid,NULL,8,NULL),
(4009,1009,'2001-01-11 01:11:21.100'::timestamp,True,'233bf399-9710-4e79-873d-2ec7bf1e0009'::uuid,NULL,9,NULL)

-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" p
WHERE
	p."ID" >= 4000

INSERT BULK "LinqDataTypes"(ID, MoneyValue, DateTimeValue, BoolValue, GuidValue, BinaryValue, SmallIntValue, StringValue)

-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" p
WHERE
	p."ID" >= 4000

