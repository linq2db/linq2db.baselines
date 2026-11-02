-- YDB Ydb
$CTE_1 = 	SELECT
		SUM(Unwrap(CAST(Unwrap(CAST(t1.FinishedOn - t1.StartedOn AS Int64)) * 10l AS Double)) / Double('600000000')) as Sum_1
	FROM
		BudgetedTaskRow t1
;

SELECT
	s.PlanningMinutes + Coalesce($CTE_1, Double('0')) as c1
FROM
	SprintRow s
LIMIT 2

