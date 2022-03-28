BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @v1 Integer -- Int32
SET     @v1 = 1

UPDATE
	"Parent"
SET
	"Value1" = :v1
WHERE
	"Parent"."Value1" = :v1

