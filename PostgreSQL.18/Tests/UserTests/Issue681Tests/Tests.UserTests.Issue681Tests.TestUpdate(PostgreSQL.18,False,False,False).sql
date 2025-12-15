-- PostgreSQL.18 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Issue681Table"
SET
	"Value" = :Value
WHERE
	"Issue681Table"."ID" = :ID

