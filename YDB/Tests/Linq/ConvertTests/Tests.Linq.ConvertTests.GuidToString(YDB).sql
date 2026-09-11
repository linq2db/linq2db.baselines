-- YDB Ydb
DECLARE $guid Text(36) -- String
SET     $guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'u

SELECT
	t.GuidValue as GuidValue
FROM
	LinqDataTypes t
WHERE
	Unicode::ToLower(Unwrap(CAST(t.GuidValue AS Text))) = $guid

