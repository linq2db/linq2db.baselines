﻿BeforeExecute
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
			("UpdatedEntities"."Value1" * "t_1"."Value1") * @int1,
			("UpdatedEntities"."Value2" * "t_1"."Value2") * @int2,
			("UpdatedEntities"."Value3" * "t_1"."Value3") * @int3
		FROM
			"UpdatedEntities" "c_2"
				INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
		WHERE
			"t_1"."id" <> @someId AND "UpdatedEntities"."id" = "c_2"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_1"
				INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
		WHERE
			"t"."id" <> @someId AND "UpdatedEntities"."id" = "c_1"."id"
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

