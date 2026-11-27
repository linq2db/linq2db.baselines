-- PostgreSQL.9.3 PostgreSQL
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

