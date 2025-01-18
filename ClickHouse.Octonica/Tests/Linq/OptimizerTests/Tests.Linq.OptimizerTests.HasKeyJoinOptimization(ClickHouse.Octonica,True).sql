BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	f1.Key1,
	f1.Key2,
	f1.DataKey11,
	f1.DataKey21,
	f1.DataKey22,
	f1.DataKey31,
	f1.DataKey32,
	f1.DataKey33,
	f1.ValueStr,
	f2.Key1,
	f2.Key2,
	f2.DataKey11,
	f2.DataKey21,
	f2.DataKey22,
	f2.DataKey31,
	f2.DataKey32,
	f2.DataKey33,
	f2.ValueStr,
	f3.Key1,
	f3.Key2,
	f3.DataKey11,
	f3.DataKey21,
	f3.DataKey22,
	f3.DataKey31,
	f3.DataKey32,
	f3.DataKey33,
	f3.ValueStr,
	f1.Key1,
	f1.Key2,
	f1.DataKey11,
	f1.DataKey21,
	f1.DataKey22,
	f1.DataKey31,
	f1.DataKey32,
	f1.DataKey33,
	f1.ValueStr,
	f2.Key1,
	f2.Key2,
	f2.DataKey11,
	f2.DataKey21,
	f2.DataKey22,
	f2.DataKey31,
	f2.DataKey32,
	f2.DataKey33,
	f2.ValueStr,
	f3.Key1,
	f3.Key2,
	f3.DataKey11,
	f3.DataKey21,
	f3.DataKey22,
	f3.DataKey31,
	f3.DataKey32,
	f3.DataKey33,
	f3.ValueStr
FROM
	SecondOptimizerData s
		INNER JOIN FirstOptimizerData p2 ON p2.Key1 = s.Key1 AND p2.Key2 = s.Key2
		INNER JOIN FirstOptimizerData f1 ON f1.DataKey11 = s.DataKey11
		INNER JOIN FirstOptimizerData f2 ON f2.DataKey21 = s.DataKey21 AND f2.DataKey22 = s.DataKey22
		INNER JOIN FirstOptimizerData f3 ON f3.DataKey31 = s.DataKey31 AND f3.DataKey32 = s.DataKey32 AND f3.DataKey33 = s.DataKey33
WHERE
	f1.ValueStr IS NOT NULL AND f2.DataKey22 > 0 AND f3.Key1 > 0

