-- YDB Ydb
SELECT
	x.Id as Id,
	t1.Association as Association
FROM
	StringAssociationOwner x
		INNER JOIN (
			SELECT
				a_Association.`Value` as Association,
				ROW_NUMBER() OVER (PARTITION BY a_Association.Id ORDER BY a_Association.Id) as rn,
				a_Association.Id as Id
			FROM
				StringAssociationValue a_Association
		) t1 ON t1.Id = x.Id
WHERE
	t1.Association IS NOT NULL AND t1.Association <> 'unknown'u AND
	t1.rn = 1

