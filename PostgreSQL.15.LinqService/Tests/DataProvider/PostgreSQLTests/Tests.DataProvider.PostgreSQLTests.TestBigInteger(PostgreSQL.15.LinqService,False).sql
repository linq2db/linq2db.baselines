BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Numeric -- Decimal
SET     @Value1 = -12345678901234567890123456789012345678901234567890
DECLARE @Value2 Numeric -- Decimal
SET     @Value2 = -22345678901234567890123456789012345678901234567890

INSERT INTO "BigIntegerTable"
(
	"Id",
	"Value1",
	"Value2"
)
VALUES
(
	:Id,
	:Value1,
	:Value2
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2"
FROM
	"BigIntegerTable" t1
ORDER BY
	t1."Id"

