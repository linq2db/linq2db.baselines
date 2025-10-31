-- ClickHouse.Octonica ClickHouse

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
	d.Key1,
	d.Key2
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData d ON d.Key1 = s.Key1 AND d.Key2 = s.Key2

-- ClickHouse.Octonica ClickHouse

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

