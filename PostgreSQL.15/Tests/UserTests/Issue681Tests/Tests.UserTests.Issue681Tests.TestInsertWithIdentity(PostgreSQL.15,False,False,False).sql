BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

