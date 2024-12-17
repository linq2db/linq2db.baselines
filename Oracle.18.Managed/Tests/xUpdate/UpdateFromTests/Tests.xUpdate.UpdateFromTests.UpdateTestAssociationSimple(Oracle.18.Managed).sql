BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (0,1,1,3,0)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (1,11,12,13,1)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (2,21,22,23,2)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (3,31,32,33,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateRelation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "UpdateRelation"
		(
			"id"            Int NOT NULL,
			"RelatedValue1" Int NOT NULL,
			"RelatedValue2" Int NOT NULL,
			"RelatedValue3" Int NOT NULL,

			CONSTRAINT "PK_UpdateRelation" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "UpdateRelation" ("id", "RelatedValue1", "RelatedValue2", "RelatedValue3") VALUES (0,1,2,3)
	INTO "UpdateRelation" ("id", "RelatedValue1", "RelatedValue2", "RelatedValue3") VALUES (1,11,12,13)
	INTO "UpdateRelation" ("id", "RelatedValue1", "RelatedValue2", "RelatedValue3") VALUES (2,21,22,23)
	INTO "UpdateRelation" ("id", "RelatedValue1", "RelatedValue2", "RelatedValue3") VALUES (3,31,32,33)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"UpdatedEntities"
SET
	"Value1" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"Value2" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"Value3" = 1
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"UpdatedEntities" v
				LEFT JOIN "UpdateRelation" a_Relation ON v."RelationId" = a_Relation."id"
		WHERE
			a_Relation."RelatedValue1" = 11 AND "UpdatedEntities"."id" = v."id"
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v
		LEFT JOIN "UpdateRelation" a_Relation ON v."RelationId" = a_Relation."id"
WHERE
	a_Relation."RelatedValue1" = 11
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateRelation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

