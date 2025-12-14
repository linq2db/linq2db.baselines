-- Oracle.21.Managed Oracle.Managed Oracle12
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
	("Value1", "Value2", "Value3") = (
		SELECT
			("UpdatedEntities"."Value1" * t_1."Value1") * :int1,
			("UpdatedEntities"."Value2" * t_1."Value2") * :int2,
			("UpdatedEntities"."Value3" * t_1."Value3") * :int3
		FROM
			"UpdatedEntities" c_2,
			"NewEntities" t_1
		WHERE
			t_1."id" = c_2."id" AND t_1."id" <> :someId AND "UpdatedEntities"."id" = c_2."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" c_1,
			"NewEntities" t
		WHERE
			t."id" = c_1."id" AND t."id" <> :someId AND "UpdatedEntities"."id" = c_1."id"
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	v."id",
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

