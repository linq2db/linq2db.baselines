BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @guid Varchar2(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	t."GuidValue"
FROM
	"LinqDataTypes" t
WHERE
	Lower(Lower(SUBSTR(RAWTOHEX(t."GuidValue"), 7, 2) || SUBSTR(RAWTOHEX(t."GuidValue"), 5, 2) || SUBSTR(RAWTOHEX(t."GuidValue"), 3, 2) || SUBSTR(RAWTOHEX(t."GuidValue"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."GuidValue"), 11, 2) || SUBSTR(RAWTOHEX(t."GuidValue"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."GuidValue"), 15, 2) || SUBSTR(RAWTOHEX(t."GuidValue"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."GuidValue"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."GuidValue"), 21, 12))) = :guid

