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
	u.Count_1,
	nu.Count_1
FROM
	SecondOptimizerData s
		LEFT JOIN (
			SELECT
				g_1.DataKey21 as DataKey21,
				g_1.DataKey22 as DataKey22,
				g_1.Key1 as Key1,
				g_1.Key2 as Key2,
				COUNT(*) as Count_1
			FROM
				FirstOptimizerData g_1
			GROUP BY
				g_1.Key1,
				g_1.Key2,
				g_1.DataKey21,
				g_1.DataKey22
		) u ON u.DataKey21 = s.DataKey21 AND u.DataKey22 = s.DataKey22 AND u.Key1 = s.Key1 AND u.Key2 = s.Key2
		LEFT JOIN (
			SELECT
				g_2.DataKey21 as DataKey21,
				COUNT(*) as Count_1
			FROM
				FirstOptimizerData g_2
			GROUP BY
				g_2.Key1,
				g_2.Key2,
				g_2.DataKey21,
				g_2.DataKey22
		) nu ON nu.DataKey21 = s.DataKey21 AND nu.DataKey21 = s.DataKey22

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
		LEFT JOIN (
			SELECT
				g_1.DataKey21 as DataKey21
			FROM
				FirstOptimizerData g_1
			GROUP BY
				g_1.Key1,
				g_1.Key2,
				g_1.DataKey21,
				g_1.DataKey22
		) nu ON nu.DataKey21 = p.DataKey21 AND nu.DataKey21 = p.DataKey22

