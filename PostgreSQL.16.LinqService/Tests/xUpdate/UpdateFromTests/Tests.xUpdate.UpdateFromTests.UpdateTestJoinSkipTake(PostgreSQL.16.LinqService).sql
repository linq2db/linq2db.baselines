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
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

UPDATE
	"UpdatedEntities"
SET
	"Value1" = t2.c1,
	"Value2" = t2.c2,
	"Value3" = t2.c3
FROM
	(
		SELECT
			(t1."Value1" * t1."Value1_1") * :int1 as c1,
			(t1."Value2" * t1."Value2_1") * :int2 as c2,
			(t1."Value3" * t1."Value3_1") * :int3 as c3,
			t1.id
		FROM
			(
				SELECT
					c_1.id,
					c_1."Value1",
					t."Value1" as "Value1_1",
					c_1."Value2",
					t."Value2" as "Value2_1",
					c_1."Value3",
					t."Value3" as "Value3_1"
				FROM
					"UpdatedEntities" c_1
						INNER JOIN "NewEntities" t ON t.id = c_1.id
				WHERE
					t.id <> :someId
			) t1
		ORDER BY
			t1.id
		LIMIT :take OFFSET :skip 
	) t2
WHERE
	"UpdatedEntities".id = t2.id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	v.id,
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

