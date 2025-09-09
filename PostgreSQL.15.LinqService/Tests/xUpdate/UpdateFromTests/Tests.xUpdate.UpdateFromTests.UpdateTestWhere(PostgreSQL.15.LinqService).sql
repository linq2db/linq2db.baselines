BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33
DECLARE @someId Integer -- Int32
SET     @someId = 100

UPDATE
	"UpdatedEntities"
SET
	"Value1" = ("UpdatedEntities"."Value1" * t."Value1") * :int1,
	"Value2" = ("UpdatedEntities"."Value2" * t."Value2") * :int2,
	"Value3" = ("UpdatedEntities"."Value3" * t."Value3") * :int3
FROM
	"NewEntities" t
WHERE
	t.id = "UpdatedEntities".id AND t.id <> :someId

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	v.id,
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

