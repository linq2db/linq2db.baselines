﻿BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
	a.Key1,
	a.Key2,
	a.DataKey11,
	a.DataKey21,
	a.DataKey22,
	a.DataKey31,
	a.DataKey32,
	a.DataKey33,
	a.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData a ON a.DataKey11 = s.DataKey11

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
	a.Key1,
	a.Key2,
	a.DataKey11,
	a.DataKey21,
	a.DataKey22,
	a.DataKey31,
	a.DataKey32,
	a.DataKey33,
	a.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData a ON a.DataKey22 = s.DataKey22 AND a.DataKey21 = s.DataKey21 AND a.Key1 = s.Key1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
	a.Key1,
	a.Key2,
	a.DataKey11,
	a.DataKey21,
	a.DataKey22,
	a.DataKey31,
	a.DataKey32,
	a.DataKey33,
	a.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData a ON a.DataKey31 = s.DataKey31 AND a.DataKey32 = s.DataKey32 AND a.DataKey33 = s.DataKey33

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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

