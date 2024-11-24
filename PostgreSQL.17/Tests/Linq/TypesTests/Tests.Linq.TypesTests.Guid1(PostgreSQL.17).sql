BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Uuid -- Guid
SET     @p = 'd2f970c0-35ac-4987-9cd5-5badb1757436'::uuid

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = :p

