﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MasterClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "MasterClass"
		(
			"Id1"        Int          NOT NULL,
			"Id2"        Int          NOT NULL,
			"Value"      VarChar(255)     NULL,
			"ByteValues" BLOB             NULL,

			CONSTRAINT "PK_MasterClass" PRIMARY KEY ("Id1", "Id2")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (1,1,'Str1',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (2,2,'Str2',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (3,3,'Str3',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (4,4,'Str4',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (5,5,'Str5',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (6,6,'Str6',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (7,7,'Str7',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (8,8,'Str8',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (9,9,'Str9',NULL)
	INTO "MasterClass" ("Id1", "Id2", "Value", "ByteValues") VALUES (10,10,'Str10',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DetailClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "DetailClass"
		(
			"DetailId"    Int          NOT NULL,
			"MasterId"    Int              NULL,
			"DetailValue" VarChar(255)     NULL,

			CONSTRAINT "PK_DetailClass" PRIMARY KEY ("DetailId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (1001,1,'DetailValue10001')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (3001,3,'DetailValue30001')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (3002,3,'DetailValue30002')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (3003,3,'DetailValue30003')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (5001,5,'DetailValue50001')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (5002,5,'DetailValue50002')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (5003,5,'DetailValue50003')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (5004,5,'DetailValue50004')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (5005,5,'DetailValue50005')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7001,7,'DetailValue70001')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7002,7,'DetailValue70002')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7003,7,'DetailValue70003')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7004,7,'DetailValue70004')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7005,7,'DetailValue70005')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7006,7,'DetailValue70006')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (7007,7,'DetailValue70007')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9001,9,'DetailValue90001')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9002,9,'DetailValue90002')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9003,9,'DetailValue90003')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9004,9,'DetailValue90004')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9005,9,'DetailValue90005')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9006,9,'DetailValue90006')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9007,9,'DetailValue90007')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9008,9,'DetailValue90008')
	INTO "DetailClass" ("DetailId", "MasterId", "DetailValue") VALUES (9009,9,'DetailValue90009')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DetailClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MasterClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

