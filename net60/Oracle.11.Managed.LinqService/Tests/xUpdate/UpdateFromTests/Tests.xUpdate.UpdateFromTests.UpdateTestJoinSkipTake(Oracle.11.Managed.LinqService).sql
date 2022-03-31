BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @someId Int32
SET     @someId = 100
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 1
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @take_1 Int32
SET     @take_1 = 3
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @take_2 Int32
SET     @take_2 = 3
DECLARE @take_3 Int32
SET     @take_3 = 3

UPDATE
	"UpdatedEntities"
SET
	"UpdatedEntities"."Value1" = (
		SELECT
			(t3."Value1" * t3."Value1_1") * :int1
		FROM
			(
				SELECT
					t2."id",
					t2."Value1",
					t2."Value1_1"
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
							ROWNUM <= :take
					) t2
				WHERE
					t2.RN > :skip
			) t3
		WHERE
			"UpdatedEntities"."id" = t3."id"
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			(t6."Value2" * t6."Value2_1") * :int2
		FROM
			(
				SELECT
					t5."id",
					t5."Value2",
					t5."Value2_1"
				FROM
					(
						SELECT
							ROWNUM as RN,
							t4."Value1",
							t4."Value1_1",
							t4."Value2",
							t4."Value2_1",
							t4."Value3",
							t4."Value3_1",
							t4."id"
						FROM
							(
								SELECT
									c_2."Value1",
									t_1."Value1" as "Value1_1",
									c_2."Value2",
									t_1."Value2" as "Value2_1",
									c_2."Value3",
									t_1."Value3" as "Value3_1",
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
							ROWNUM <= :take_1
					) t5
				WHERE
					t5.RN > :skip
			) t6
		WHERE
			"UpdatedEntities"."id" = t6."id"
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			(t9."Value3" * t9."Value3_1") * :int3
		FROM
			(
				SELECT
					t8."id",
					t8."Value3",
					t8."Value3_1"
				FROM
					(
						SELECT
							ROWNUM as RN,
							t7."Value1",
							t7."Value1_1",
							t7."Value2",
							t7."Value2_1",
							t7."Value3",
							t7."Value3_1",
							t7."id"
						FROM
							(
								SELECT
									c_3."Value1",
									t_2."Value1" as "Value1_1",
									c_3."Value2",
									t_2."Value2" as "Value2_1",
									c_3."Value3",
									t_2."Value3" as "Value3_1",
									c_3."id"
								FROM
									"UpdatedEntities" c_3
										INNER JOIN "NewEntities" t_2 ON t_2."id" = c_3."id"
								WHERE
									t_2."id" <> :someId
								ORDER BY
									c_3."id"
							) t7
						WHERE
							ROWNUM <= :take_2
					) t8
				WHERE
					t8.RN > :skip
			) t9
		WHERE
			"UpdatedEntities"."id" = t9."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t11."id"
				FROM
					(
						SELECT
							ROWNUM as RN,
							t10."Value1",
							t10."Value1_1",
							t10."Value2",
							t10."Value2_1",
							t10."Value3",
							t10."Value3_1",
							t10."id"
						FROM
							(
								SELECT
									c_4."Value1",
									t_3."Value1" as "Value1_1",
									c_4."Value2",
									t_3."Value2" as "Value2_1",
									c_4."Value3",
									t_3."Value3" as "Value3_1",
									c_4."id"
								FROM
									"UpdatedEntities" c_4
										INNER JOIN "NewEntities" t_3 ON t_3."id" = c_4."id"
								WHERE
									t_3."id" <> :someId
								ORDER BY
									c_4."id"
							) t10
						WHERE
							ROWNUM <= :take_3
					) t11
				WHERE
					t11.RN > :skip
			) t12
		WHERE
			"UpdatedEntities"."id" = t12."id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	v."id",
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

