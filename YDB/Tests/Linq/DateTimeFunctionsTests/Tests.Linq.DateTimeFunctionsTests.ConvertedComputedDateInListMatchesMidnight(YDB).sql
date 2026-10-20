-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2026-06-01T00:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	ConvertedDayPairRow r
WHERE
	Coalesce(r.ClosedOn, r.OpenedOn) IN ($Ids0_1)

