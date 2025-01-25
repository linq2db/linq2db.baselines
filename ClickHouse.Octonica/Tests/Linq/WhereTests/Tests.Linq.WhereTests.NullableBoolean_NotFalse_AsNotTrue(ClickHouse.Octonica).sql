BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.Bool
FROM
	NullableBool r
WHERE
	r.Bool = true OR r.Bool IS NULL

