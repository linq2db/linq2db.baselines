BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
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
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(0,1,1,3,0),
(1,11,12,13,1),
(2,21,22,23,2),
(3,31,32,33,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
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
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(0,0,0,0),
(1,1,1,1),
(2,2,2,2),
(3,3,3,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @int1 Integer(4) -- Int32
SET     @int1 = 11
DECLARE @someId Integer(4) -- Int32
SET     @someId = 100
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take_1 Integer(4) -- Int32
SET     @take_1 = 3
DECLARE @int2 Integer(4) -- Int32
SET     @int2 = 22
DECLARE @take_2 Integer(4) -- Int32
SET     @take_2 = 3
DECLARE @int3 Integer(4) -- Int32
SET     @int3 = 33
DECLARE @take_3 Integer(4) -- Int32
SET     @take_3 = 3
DECLARE @take_4 Integer(4) -- Int32
SET     @take_4 = 3

UPDATE
	"UpdatedEntities"
SET
	"UpdatedEntities"."Value1" = (
		SELECT
			("t2"."Value1" * "t2"."Value1_1") * @int1
		FROM
			(
				SELECT
					"t1"."id",
					"t1"."Value1",
					"t1"."Value1_1"
				FROM
					(
						SELECT
							ROW_NUMBER() OVER (ORDER BY "c_1"."id") as RN,
							"c_1"."Value1",
							"t"."Value1" as "Value1_1",
							"c_1"."Value2",
							"t"."Value2" as "Value2_1",
							"c_1"."Value3",
							"t"."Value3" as "Value3_1",
							"c_1"."id"
						FROM
							"UpdatedEntities" "c_1"
								INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
						WHERE
							"t"."id" <> @someId
					) "t1"
				WHERE
					"t1".RN > @skip AND "t1".RN <= @take_1
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			("t4"."Value2" * "t4"."Value2_1") * @int2
		FROM
			(
				SELECT
					"t3"."id",
					"t3"."Value2",
					"t3"."Value2_1"
				FROM
					(
						SELECT
							ROW_NUMBER() OVER (ORDER BY "c_2"."id") as RN,
							"c_2"."Value1",
							"t_1"."Value1" as "Value1_1",
							"c_2"."Value2",
							"t_1"."Value2" as "Value2_1",
							"c_2"."Value3",
							"t_1"."Value3" as "Value3_1",
							"c_2"."id"
						FROM
							"UpdatedEntities" "c_2"
								INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
						WHERE
							"t_1"."id" <> @someId
					) "t3"
				WHERE
					"t3".RN > @skip AND "t3".RN <= @take_2
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			("t6"."Value3" * "t6"."Value3_1") * @int3
		FROM
			(
				SELECT
					"t5"."id",
					"t5"."Value3",
					"t5"."Value3_1"
				FROM
					(
						SELECT
							ROW_NUMBER() OVER (ORDER BY "c_3"."id") as RN,
							"c_3"."Value1",
							"t_2"."Value1" as "Value1_1",
							"c_3"."Value2",
							"t_2"."Value2" as "Value2_1",
							"c_3"."Value3",
							"t_2"."Value3" as "Value3_1",
							"c_3"."id"
						FROM
							"UpdatedEntities" "c_3"
								INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
						WHERE
							"t_2"."id" <> @someId
					) "t5"
				WHERE
					"t5".RN > @skip AND "t5".RN <= @take_3
			) "t6"
		WHERE
			"UpdatedEntities"."id" = "t6"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"t7"."id"
				FROM
					(
						SELECT
							ROW_NUMBER() OVER (ORDER BY "c_4"."id") as RN,
							"c_4"."Value1",
							"t_3"."Value1" as "Value1_1",
							"c_4"."Value2",
							"t_3"."Value2" as "Value2_1",
							"c_4"."Value3",
							"t_3"."Value3" as "Value3_1",
							"c_4"."id"
						FROM
							"UpdatedEntities" "c_4"
								INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
						WHERE
							"t_3"."id" <> @someId
					) "t7"
				WHERE
					"t7".RN > @skip AND "t7".RN <= @take_4
			) "t8"
		WHERE
			"UpdatedEntities"."id" = "t8"."id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
END

