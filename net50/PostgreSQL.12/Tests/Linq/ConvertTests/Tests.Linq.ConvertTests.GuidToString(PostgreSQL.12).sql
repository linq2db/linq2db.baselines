﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @guid Text(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	t."GuidValue"
FROM
	"LinqDataTypes" t
WHERE
	Lower(Cast(t."GuidValue" as VarChar(36))) = :guid

