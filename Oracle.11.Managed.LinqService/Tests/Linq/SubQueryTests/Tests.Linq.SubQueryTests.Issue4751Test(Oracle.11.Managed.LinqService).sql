BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 20
DECLARE @take Int32
SET     @take = 10

SELECT
	t5."Id",
	t5."CarNo",
	t5."CarSelf",
	t5."CarBrand",
	t5."RateWgt",
	t5."MastLeve",
	t5."ForkPole",
	t5."FirstVal",
	t5."TelNo",
	t5."RuleNo",
	t5."RuleName",
	t5."RuleType",
	t5."RuleVal",
	t5."RuleUnit",
	t5."RecCreator",
	t5."RecCreateTime",
	t5."RecRevisor",
	t5."RecReviseTime"
FROM
	(
		SELECT
			t1."Id",
			t1."CarNo",
			t1."CarSelf",
			t1."CarBrand",
			t1."RateWgt",
			t1."MastLeve",
			t1."ForkPole",
			t1."FirstVal",
			t1."TelNo",
			t1."RuleNo",
			t1."RuleName",
			t1."RuleType",
			t1."RuleVal",
			t1."RuleUnit",
			t1."RecCreator",
			t1."RecCreateTime",
			t1."RecRevisor",
			t1."RecReviseTime",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."Id",
					x."CarNo",
					x."CarSelf",
					x."CarBrand",
					x."RateWgt",
					x."MastLeve",
					x."ForkPole",
					x."FirstVal",
					x."TelNo",
					x."RuleNo",
					x."RuleName",
					x."RuleType",
					x."RuleVal",
					x."RuleUnit",
					x."RecCreator",
					x."RecCreateTime",
					x."RecRevisor",
					x."RecReviseTime"
				FROM
					(
						SELECT
							t."CarNo",
							t."CarBrand",
							t."Id",
							t."CarSelf",
							t."RateWgt",
							t."MastLeve",
							t."ForkPole",
							t4."FirstVal",
							t2."TelNo",
							t2."RuleNo",
							t3."RuleName",
							t3."RuleType",
							t3."RuleVal",
							t3."RuleUnit",
							t2."RecCreator",
							t2."RecCreateTime",
							t2."RecRevisor",
							t2."RecReviseTime"
						FROM
							"Tdm100" t
								LEFT JOIN "Trp004" t2 ON t2."CarNo" = t."CarNo" OR t2."CarNo" IS NULL AND t."CarNo" IS NULL
								LEFT JOIN "Trp003" t3 ON t3."RuleNo" = t2."RuleNo" OR t3."RuleNo" IS NULL AND t2."RuleNo" IS NULL
								LEFT JOIN "Trp0041" t4 ON t4."CarNo" = t."CarNo" OR t4."CarNo" IS NULL AND t."CarNo" IS NULL
					) x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t5
WHERE
	t5.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t."CarNo",
			t."CarBrand"
		FROM
			"Tdm100" t
				LEFT JOIN "Trp004" t2 ON t2."CarNo" = t."CarNo" OR t2."CarNo" IS NULL AND t."CarNo" IS NULL
				LEFT JOIN "Trp003" t3 ON t3."RuleNo" = t2."RuleNo" OR t3."RuleNo" IS NULL AND t2."RuleNo" IS NULL
				LEFT JOIN "Trp0041" t4 ON t4."CarNo" = t."CarNo" OR t4."CarNo" IS NULL AND t."CarNo" IS NULL
	) t1

