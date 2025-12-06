-- ClickHouse.Driver ClickHouse

SELECT
	s.Key1,
	s.Key2,
	s.DataKey11,
	s.DataKey21,
	s.DataKey22,
	s.DataKey31,
	s.DataKey32,
	s.DataKey33,
	s.ValueStr,
	d_1.DataKey31,
	d_1.DataKey11
FROM
	SecondOptimizerData s
		LEFT JOIN (
			SELECT DISTINCT
				d.DataKey31 as DataKey31,
				d.DataKey11 as DataKey11
			FROM
				FirstOptimizerData d
		) d_1 ON d_1.DataKey11 = s.DataKey11 AND d_1.DataKey31 = s.DataKey31

-- ClickHouse.Driver ClickHouse

SELECT
	p.Key1,
	p.Key2,
	p.DataKey11,
	p.DataKey21,
	p.DataKey22,
	p.DataKey31,
	p.DataKey32,
	p.DataKey33,
	p.ValueStr
FROM
	SecondOptimizerData p

