﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'd2f970c0-35ac-4987-9cd5-5badb1757436'::uuid

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = :GuidValue

