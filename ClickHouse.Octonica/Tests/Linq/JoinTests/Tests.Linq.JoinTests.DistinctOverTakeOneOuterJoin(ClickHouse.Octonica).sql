-- ClickHouse.Octonica ClickHouse
SELECT DISTINCT
	cc_1.Name
FROM
	LookupPerson t1
		LEFT JOIN (
			SELECT
				cc.Name as Name,
				ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
				cc.Code as Code
			FROM
				LookupCity cc
		) cc_1 ON cc_1.Code = t1.Code AND cc_1.rn = 1

