﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @GuidValue_1 Uuid -- Guid
SET     @GuidValue_1 = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = :GuidValue_1

