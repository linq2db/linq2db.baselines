BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @v1 Integer -- Int32
SET     @v1 = 1

UPDATE
	"Parent"
SET
	"Value1" = :v1
WHERE
	"Parent"."Value1" = :v1

