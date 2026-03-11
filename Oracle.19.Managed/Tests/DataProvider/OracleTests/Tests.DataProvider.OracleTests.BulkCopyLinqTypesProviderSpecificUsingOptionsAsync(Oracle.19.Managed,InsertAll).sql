-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4000,1000,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0000'),NULL,0,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4001,1001,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0001'),NULL,1,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4002,1002,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0002'),NULL,2,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4003,1003,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0003'),NULL,3,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4004,1004,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0004'),NULL,4,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4005,1005,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0005'),NULL,5,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4006,1006,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0006'),NULL,6,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4007,1007,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0007'),NULL,7,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4008,1008,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0008'),NULL,8,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "GuidValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4009,1009,TIMESTAMP '2001-01-11 01:11:21.100000',1,HEXTORAW('99F33B231097794E873D2EC7BF1E0009'),NULL,9,NULL)
SELECT * FROM dual

-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" p
WHERE
	p.ID >= 4000

