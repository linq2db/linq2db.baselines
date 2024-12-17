BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 0
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value3 Int32
SET     @Value3 = 0

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value3 Int32
SET     @Value3 = 1

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 2
DECLARE @Value1 Int32
SET     @Value1 = 2
DECLARE @Value2 Int32
SET     @Value2 = 2
DECLARE @Value3 Int32
SET     @Value3 = 2

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 3
DECLARE @Value1 Int32
SET     @Value1 = 3
DECLARE @Value2 Int32
SET     @Value2 = 3
DECLARE @Value3 Int32
SET     @Value3 = 3

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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
			("UpdatedEntities"."Value1" * t2."Value1") * :int1,
			("UpdatedEntities"."Value2" * t2."Value2") * :int2,
			("UpdatedEntities"."Value3" * t2."Value3") * :int3
		FROM
			(
				SELECT
					t_1."Value1",
					t_1."Value2",
					t_1."Value3",
					c_2."id"
				FROM
					"UpdatedEntities" c_2
						INNER JOIN "NewEntities" t_1 ON t_1."id" = c_2."id"
				WHERE
					t_1."id" <> :someId AND ROWNUM <= :take
			) t2
		WHERE
			"UpdatedEntities"."id" = t2."id"
	)
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			(
				SELECT
					c_1."id"
				FROM
					"UpdatedEntities" c_1
						INNER JOIN "NewEntities" t ON t."id" = c_1."id"
				WHERE
					t."id" <> :someId AND ROWNUM <= :take
			) t1
		WHERE
			"UpdatedEntities"."id" = t1."id"
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	v."id",
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

