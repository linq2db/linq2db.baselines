﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @guid Text(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	t."GuidValue"
FROM
	"LinqDataTypes" t
WHERE
	Lower(t."GuidValue"::VarChar(36)) = :guid

