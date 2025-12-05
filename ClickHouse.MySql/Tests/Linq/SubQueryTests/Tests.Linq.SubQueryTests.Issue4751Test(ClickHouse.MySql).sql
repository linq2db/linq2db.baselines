-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.CarNo,
	x.CarSelf,
	x.CarBrand,
	x.RateWgt,
	x.MastLeve,
	x.ForkPole,
	x.FirstVal,
	x.TelNo,
	x.RuleNo,
	x.RuleName,
	x.RuleType,
	x.RuleVal,
	x.RuleUnit,
	x.RecCreator,
	x.RecCreateTime,
	x.RecRevisor,
	x.RecReviseTime
FROM
	(
		SELECT
			t.CarNo as CarNo,
			t.CarBrand as CarBrand,
			t.Id as Id,
			t.CarSelf as CarSelf,
			t.RateWgt as RateWgt,
			t.MastLeve as MastLeve,
			t.ForkPole as ForkPole,
			t4.FirstVal as FirstVal,
			t2.TelNo as TelNo,
			t2.RuleNo as RuleNo,
			t3.RuleName as RuleName,
			t3.RuleType as RuleType,
			t3.RuleVal as RuleVal,
			t3.RuleUnit as RuleUnit,
			t2.RecCreator as RecCreator,
			t2.RecCreateTime as RecCreateTime,
			t2.RecRevisor as RecRevisor,
			t2.RecReviseTime as RecReviseTime
		FROM
			Tdm100 t
				LEFT JOIN Trp004 t2 ON t2.CarNo = t.CarNo
				LEFT JOIN Trp003 t3 ON t3.RuleNo = t2.RuleNo
				LEFT JOIN Trp0041 t4 ON t4.CarNo = t.CarNo
	) x
WHERE
	position(x.CarNo, NULL) > 0 AND position(x.CarBrand, NULL) > 0
LIMIT 20, 10

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t.CarNo as CarNo,
			t.CarBrand as CarBrand
		FROM
			Tdm100 t
				LEFT JOIN Trp004 t2 ON t2.CarNo = t.CarNo
				LEFT JOIN Trp003 t3 ON t3.RuleNo = t2.RuleNo
				LEFT JOIN Trp0041 t4 ON t4.CarNo = t.CarNo
	) t1
WHERE
	position(t1.CarNo, NULL) > 0 AND position(t1.CarBrand, NULL) > 0

