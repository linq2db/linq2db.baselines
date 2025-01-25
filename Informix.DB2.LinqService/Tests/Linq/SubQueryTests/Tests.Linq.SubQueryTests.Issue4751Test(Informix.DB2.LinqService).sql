BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 20
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT SKIP @skip FIRST @take
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
			t.CarNo,
			t.CarBrand,
			t.Id,
			t.CarSelf,
			t.RateWgt,
			t.MastLeve,
			t.ForkPole,
			t4.FirstVal,
			t2.TelNo,
			t2.RuleNo,
			t3.RuleName,
			t3.RuleType,
			t3.RuleVal,
			t3.RuleUnit,
			t2.RecCreator,
			t2.RecCreateTime,
			t2.RecRevisor,
			t2.RecReviseTime
		FROM
			Tdm100 t
				LEFT JOIN Trp004 t2 ON t2.CarNo = t.CarNo OR t2.CarNo IS NULL AND t.CarNo IS NULL
				LEFT JOIN Trp003 t3 ON t3.RuleNo = t2.RuleNo OR t3.RuleNo IS NULL AND t2.RuleNo IS NULL
				LEFT JOIN Trp0041 t4 ON t4.CarNo = t.CarNo OR t4.CarNo IS NULL AND t.CarNo IS NULL
	) x

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t.CarNo,
			t.CarBrand
		FROM
			Tdm100 t
				LEFT JOIN Trp004 t2 ON t2.CarNo = t.CarNo OR t2.CarNo IS NULL AND t.CarNo IS NULL
				LEFT JOIN Trp003 t3 ON t3.RuleNo = t2.RuleNo OR t3.RuleNo IS NULL AND t2.RuleNo IS NULL
				LEFT JOIN Trp0041 t4 ON t4.CarNo = t.CarNo OR t4.CarNo IS NULL AND t.CarNo IS NULL
	) t1

