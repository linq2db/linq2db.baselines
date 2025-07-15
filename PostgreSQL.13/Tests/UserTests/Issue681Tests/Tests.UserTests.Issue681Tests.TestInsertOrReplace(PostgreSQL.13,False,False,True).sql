BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO public."Issue681Table" AS t1
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value
)
ON CONFLICT ("ID") DO UPDATE SET
	"Value" = :Value

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO public."Issue681Table" AS t1
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value
)
ON CONFLICT ("ID") DO UPDATE SET
	"Value" = :Value

