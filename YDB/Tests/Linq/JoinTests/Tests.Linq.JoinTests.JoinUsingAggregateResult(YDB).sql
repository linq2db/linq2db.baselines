-- YDB Ydb
SELECT
	t1.TesteeId as TesteeId
FROM
	(
		SELECT
			MIN(q.TesteeId) as TesteeId
		FROM
			(
				SELECT DISTINCT
					elements.Token as Key_1,
					elements.TesteeId as TesteeId,
					elements.TestId as TestId,
					elements.StructureId as StructureId,
					elements.SoleId as SoleId,
					elements.Distance as Distance,
					elements.Placement as Placement
				FROM
					AggJoinCoverage elements
						INNER JOIN AggJoinTest test ON elements.TestId = test.Id
						LEFT JOIN AggJoinExecutant executant ON test.Id = executant.TestId
						LEFT JOIN AggJoinTestee testee ON elements.TesteeId = testee.Id
						LEFT JOIN AggJoinOutfit outfit ON testee.WorkblankId = outfit.WorkblankId
				WHERE
					elements.Status = 14650
			) q
		GROUP BY
			q.Key_1
	) t1

