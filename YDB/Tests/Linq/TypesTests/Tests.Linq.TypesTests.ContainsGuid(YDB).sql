-- YDB Ydb
DECLARE $Ids0_1 Uuid -- Guid
SET     $Ids0_1 = Uuid('d2f970c0-35ac-4987-9cd5-5badb1757436')

SELECT
	p.GuidValue as GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue IN ($Ids0_1)

