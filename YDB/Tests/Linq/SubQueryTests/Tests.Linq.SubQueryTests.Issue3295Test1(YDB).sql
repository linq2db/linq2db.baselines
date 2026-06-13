-- YDB Ydb

SELECT
	x_1.Id as Id,
	x_1.StatusName as StatusName
FROM
	(
		SELECT
			CASE
				WHEN t2.PersonID IS NOT NULL THEN t2.Diagnosis
				ELSE 'abc'u
			END as StatusName,
			CASE
				WHEN t2.PersonID IS NOT NULL THEN t2.PersonID
				ELSE x.PersonID
			END as Id
		FROM
			Person x
				LEFT JOIN (
					SELECT
						t1.PersonID as PersonID,
						t1.Diagnosis as Diagnosis
					FROM
						(
							SELECT
								y.PersonID as PersonID,
								y.Diagnosis as Diagnosis,
								ROW_NUMBER() OVER (PARTITION BY y.PersonID ORDER BY y.PersonID) as rn
							FROM
								Patient y
						) t1
					WHERE
						t1.rn = 1
				) t2 ON t2.PersonID = x.PersonID
	) x_1
WHERE
	x_1.StatusName = 'abc'u

