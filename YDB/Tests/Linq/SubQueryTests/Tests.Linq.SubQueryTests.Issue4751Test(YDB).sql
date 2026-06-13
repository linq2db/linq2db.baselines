-- YDB Ydb
DECLARE $take Int32
SET     $take = 10
DECLARE $skip Int32
SET     $skip = 20

SELECT
	x.Id as Id,
	x.CarNo as CarNo,
	x.CarSelf as CarSelf,
	x.CarBrand as CarBrand,
	x.RateWgt as RateWgt,
	x.MastLeve as MastLeve,
	x.ForkPole as ForkPole,
	x.FirstVal as FirstVal,
	x.TelNo as TelNo,
	x.RuleNo as RuleNo,
	x.RuleName as RuleName,
	x.RuleType as RuleType,
	x.RuleVal as RuleVal,
	x.RuleUnit as RuleUnit,
	x.RecCreator as RecCreator,
	x.RecCreateTime as RecCreateTime,
	x.RecRevisor as RecRevisor,
	x.RecReviseTime as RecReviseTime
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
ORDER BY
	x.CarNo
LIMIT $take OFFSET $skip 

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
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

