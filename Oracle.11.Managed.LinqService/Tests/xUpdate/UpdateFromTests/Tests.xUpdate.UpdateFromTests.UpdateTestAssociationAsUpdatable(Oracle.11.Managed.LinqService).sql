﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
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
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 0
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value3 Int32
SET     @Value3 = 3
DECLARE @RelationId Int32
SET     @RelationId = 0

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1
DECLARE @Value1 Int32
SET     @Value1 = 11
DECLARE @Value2 Int32
SET     @Value2 = 12
DECLARE @Value3 Int32
SET     @Value3 = 13
DECLARE @RelationId Int32
SET     @RelationId = 1

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 2
DECLARE @Value1 Int32
SET     @Value1 = 21
DECLARE @Value2 Int32
SET     @Value2 = 22
DECLARE @Value3 Int32
SET     @Value3 = 23
DECLARE @RelationId Int32
SET     @RelationId = 2

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 3
DECLARE @Value1 Int32
SET     @Value1 = 31
DECLARE @Value2 Int32
SET     @Value2 = 32
DECLARE @Value3 Int32
SET     @Value3 = 33
DECLARE @RelationId Int32
SET     @RelationId = 3

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateRelation"';
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
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 0
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 1
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 2
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 3

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	:id,
	:RelatedValue1,
	:RelatedValue2,
	:RelatedValue3
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 11
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 12
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 13

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	:id,
	:RelatedValue1,
	:RelatedValue2,
	:RelatedValue3
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 2
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 21
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 22
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 23

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	:id,
	:RelatedValue1,
	:RelatedValue2,
	:RelatedValue3
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 3
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 31
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 32
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 33

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	:id,
	:RelatedValue1,
	:RelatedValue2,
	:RelatedValue3
)

BeforeExecute
-- Oracle.11.Managed Oracle11

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			a_Relation_1."RelatedValue3"
		FROM
			"UpdatedEntities" v_1
				LEFT JOIN "UpdateRelation" a_Relation_1 ON v_1."RelationId" = a_Relation_1."id"
		WHERE
			a_Relation_1."RelatedValue1" = 11 AND "UpdatedEntities"."id" = v_1."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" v
				LEFT JOIN "UpdateRelation" a_Relation ON v."RelationId" = a_Relation."id"
		WHERE
			a_Relation."RelatedValue1" = 11 AND "UpdatedEntities"."id" = v."id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	v."Value1"
FROM
	"UpdatedEntities" v
		LEFT JOIN "UpdateRelation" a_Relation ON v."RelationId" = a_Relation."id"
WHERE
	a_Relation."RelatedValue1" = 11 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateRelation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

