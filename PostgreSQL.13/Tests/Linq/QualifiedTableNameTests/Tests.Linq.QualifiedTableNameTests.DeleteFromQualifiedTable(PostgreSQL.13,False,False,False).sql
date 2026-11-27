-- PostgreSQL.13 PostgreSQL12
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"QualifiedNameTable" t1
WHERE
	t1."ID" = :ID

