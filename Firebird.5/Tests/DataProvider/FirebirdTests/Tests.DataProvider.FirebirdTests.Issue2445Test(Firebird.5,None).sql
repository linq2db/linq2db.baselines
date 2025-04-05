BeforeExecute
-- Firebird.5 Firebird4

SELECT
	t1.Id,
	t1.CardName,
	t1.OwnerId,
	a_Owner.Id,
	a_Owner.Name,
	(
		SELECT
			COUNT(*)
		FROM
			Card t
		WHERE
			t.OwnerId = a_Owner.Id
	)
FROM
	Card t1
		LEFT JOIN Client a_Owner ON a_Owner.Id = t1.OwnerId

