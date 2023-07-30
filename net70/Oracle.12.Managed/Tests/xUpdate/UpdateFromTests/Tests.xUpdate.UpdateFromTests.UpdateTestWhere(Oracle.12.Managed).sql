﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "UpdatedEntities"
		(
			"id"         Int NOT NULL,
			"Value1"     Int NOT NULL,
			"Value2"     Int NOT NULL,
			"Value3"     Int NOT NULL,
			"RelationId" Int     NULL,

			CONSTRAINT "PK_UpdatedEntities" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (0,1,1,3,0)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (1,11,12,13,1)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (2,21,22,23,2)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (3,31,32,33,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "NewEntities"
		(
			"id"     Int NOT NULL,
			"Value1" Int NOT NULL,
			"Value2" Int NOT NULL,
			"Value3" Int NOT NULL,

			CONSTRAINT "PK_NewEntities" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (0,0,0,0)
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (1,1,1,1)
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (2,2,2,2)
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (3,3,3,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @someId Int32
SET     @someId = 100

UPDATE
	"UpdatedEntities"
SET
	("UpdatedEntities"."Value1", "UpdatedEntities"."Value2", "UpdatedEntities"."Value3") = (
		SELECT
			(c_1."Value1" * t."Value1") * :int1,
			(c_1."Value2" * t."Value2") * :int2,
			(c_1."Value3" * t."Value3") * :int3
		FROM
			"UpdatedEntities" c_1,
			"NewEntities" t
		WHERE
			t."id" = c_1."id" AND t."id" <> :someId AND "UpdatedEntities"."id" = c_1."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" c_2,
			"NewEntities" t_1
		WHERE
			t_1."id" = c_2."id" AND t_1."id" <> :someId AND "UpdatedEntities"."id" = c_2."id"
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	v."id",
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

