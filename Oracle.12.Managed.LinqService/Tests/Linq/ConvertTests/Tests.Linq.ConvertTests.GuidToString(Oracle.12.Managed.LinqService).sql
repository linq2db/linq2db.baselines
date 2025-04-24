BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @guid Varchar2(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	t."GuidValue"
FROM
	"LinqDataTypes" t
WHERE
	Lower(Substr(CAST(t."GuidValue" AS Char(36)), 7, 2) || Substr(CAST(t."GuidValue" AS Char(36)), 5, 2) || Substr(CAST(t."GuidValue" AS Char(36)), 3, 2) || Substr(CAST(t."GuidValue" AS Char(36)), 1, 2) || '-' || Substr(CAST(t."GuidValue" AS Char(36)), 11, 2) || Substr(CAST(t."GuidValue" AS Char(36)), 9, 2) || '-' || Substr(CAST(t."GuidValue" AS Char(36)), 15, 2) || Substr(CAST(t."GuidValue" AS Char(36)), 13, 2) || '-' || Substr(CAST(t."GuidValue" AS Char(36)), 17, 4) || '-' || Substr(CAST(t."GuidValue" AS Char(36)), 21, 12)) = :guid

