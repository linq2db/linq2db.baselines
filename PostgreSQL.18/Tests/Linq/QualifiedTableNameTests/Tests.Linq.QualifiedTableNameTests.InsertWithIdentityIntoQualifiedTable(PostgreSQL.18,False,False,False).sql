-- PostgreSQL.18 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "QualifiedIdTable"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

