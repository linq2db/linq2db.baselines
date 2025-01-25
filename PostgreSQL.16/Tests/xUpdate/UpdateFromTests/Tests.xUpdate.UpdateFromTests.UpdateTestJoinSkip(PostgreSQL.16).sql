BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @skip Integer -- Int32
SET     @skip = 2

UPDATE
	"UpdatedEntities"
SET
	"Value1" = t1.c1,
	"Value2" = t1.c2,
	"Value3" = t1.c3
FROM
	(
		SELECT
			(c_1."Value1" * t."Value1") * :int1 as c1,
			(c_1."Value2" * t."Value2") * :int2 as c2,
			(c_1."Value3" * t."Value3") * :int3 as c3,
			c_1.id
		FROM
			"UpdatedEntities" c_1
				INNER JOIN "NewEntities" t ON t.id = c_1.id
		WHERE
			t.id <> :someId
		ORDER BY
			c_1.id
		OFFSET :skip 
	) t1
WHERE
	"UpdatedEntities".id = t1.id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	v.id,
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

