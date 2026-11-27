-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"QualifiedNameTable"
SET
	"Value" = :Value
WHERE
	"QualifiedNameTable"."ID" = :ID

