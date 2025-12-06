-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @v1 Integer -- Int32
SET     @v1 = 1

UPDATE
	"Parent"
SET
	"Value1" = :v1
WHERE
	"Parent"."Value1" = :v1

