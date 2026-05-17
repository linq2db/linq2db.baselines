-- DB2 DB2.LUW DB2LUW
DECLARE @int1 Integer(4) -- Int32
SET     @int1 = 11
DECLARE @int2 Integer(4) -- Int32
SET     @int2 = 22
DECLARE @int3 Integer(4) -- Int32
SET     @int3 = 33
DECLARE @someId Integer(4) -- Int32
SET     @someId = 100

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2", "Value3") = (
		SELECT
			("t2"."Value1" * "t2"."Value1_1") * @int1,
			("t2"."Value2" * "t2"."Value2_1") * @int2,
			("t2"."Value3" * "t2"."Value3_1") * @int3
		FROM
			(
				SELECT
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
				FETCH NEXT 2 ROWS ONLY
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"c_1"."id"
				FROM
					"UpdatedEntities" "c_1"
						INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
				WHERE
					"t"."id" <> @someId
				FETCH NEXT 2 ROWS ONLY
			) "t1"
		WHERE
			"UpdatedEntities"."id" = "t1"."id"
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

