-- Firebird.3 Firebird3

SELECT
	t2.Id,
	t2.CardName,
	t2.OwnerId,
	t1.cond,
	t1.Name,
	t1.CountOfTCards
FROM
	Card t2
		LEFT JOIN (
			SELECT
				a_Owner.Id as cond,
				a_Owner.Name,
				(
					SELECT
						COUNT(*)
					FROM
						Card t
					WHERE
						t.OwnerId = a_Owner.Id
				) as CountOfTCards
			FROM
				Client a_Owner
		) t1 ON t1.cond = t2.OwnerId

