BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (0,1,1,3,0)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (1,11,12,13,1)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (2,21,22,23,2)
	INTO "UpdatedEntities" ("id", "Value1", "Value2", "Value3", "RelationId") VALUES (3,31,32,33,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (0,0,0,0)
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (1,1,1,1)
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (2,2,2,2)
	INTO "NewEntities" ("id", "Value1", "Value2", "Value3") VALUES (3,3,3,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @someId Int32
SET     @someId = 100
DECLARE @take_1 Int32
SET     @take_1 = 3
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take_2 Int32
SET     @take_2 = 3

UPDATE
	"UpdatedEntities"
SET
	("UpdatedEntities"."Value1", "UpdatedEntities"."Value2", "UpdatedEntities"."Value3") = (
		SELECT
			(t3."Value1" * t3."Value1_1") * :int1,
			(t3."Value2" * t3."Value2_1") * :int2,
			(t3."Value3" * t3."Value3_1") * :int3
		FROM
			(
				SELECT
					t2."id",
					t2."Value1",
					t2."Value1_1",
					t2."Value2",
					t2."Value2_1",
					t2."Value3",
					t2."Value3_1"
				FROM
					(
						SELECT
							ROWNUM as RN,
							t1."Value1",
							t1."Value1_1",
							t1."Value2",
							t1."Value2_1",
							t1."Value3",
							t1."Value3_1",
							t1."id"
						FROM
							(
								SELECT
									c_1."Value1",
									t."Value1" as "Value1_1",
									c_1."Value2",
									t."Value2" as "Value2_1",
									c_1."Value3",
									t."Value3" as "Value3_1",
									c_1."id"
								FROM
									"UpdatedEntities" c_1
										INNER JOIN "NewEntities" t ON t."id" = c_1."id"
								WHERE
									t."id" <> :someId
								ORDER BY
									c_1."id"
							) t1
						WHERE
							ROWNUM <= :take_1
					) t2
				WHERE
					t2.RN > :skip
			) t3
		WHERE
			"UpdatedEntities"."id" = t3."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t5."id"
				FROM
					(
						SELECT
							ROWNUM as RN,
							t4."id"
						FROM
							(
								SELECT
									c_2."id"
								FROM
									"UpdatedEntities" c_2
										INNER JOIN "NewEntities" t_1 ON t_1."id" = c_2."id"
								WHERE
									t_1."id" <> :someId
								ORDER BY
									c_2."id"
							) t4
						WHERE
							ROWNUM <= :take_2
					) t5
				WHERE
					t5.RN > :skip
			) t6
		WHERE
			"UpdatedEntities"."id" = t6."id"
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	v."id",
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

