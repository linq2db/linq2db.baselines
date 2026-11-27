-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "QualifiedNameTable"
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value
)

-- PostgreSQL.9.2 PostgreSQL
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

