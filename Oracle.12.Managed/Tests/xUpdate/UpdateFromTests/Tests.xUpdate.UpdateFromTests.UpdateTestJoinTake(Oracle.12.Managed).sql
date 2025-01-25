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
DECLARE @take Int32
SET     @take = 2

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2", "Value3") = (
		SELECT
			("UpdatedEntities"."Value1" * t4."Value1") * :int1,
			("UpdatedEntities"."Value2" * t4."Value2") * :int2,
			("UpdatedEntities"."Value3" * t4."Value3") * :int3
		FROM
			(
				SELECT
					t_1."Value1",
					t_1."Value2",
					t_1."Value3",
					t3."id"
				FROM
					"UpdatedEntities" t3
						INNER JOIN "NewEntities" t_1 ON t_1."id" = t3."id"
				WHERE
					t_1."id" <> :someId AND ROWNUM <= :take
			) t4
		WHERE
			"UpdatedEntities"."id" = t4."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t1."id"
				FROM
					"UpdatedEntities" t1
						INNER JOIN "NewEntities" t ON t."id" = t1."id"
				WHERE
					t."id" <> :someId AND ROWNUM <= :take
			) t2
		WHERE
			"UpdatedEntities"."id" = t2."id"
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

