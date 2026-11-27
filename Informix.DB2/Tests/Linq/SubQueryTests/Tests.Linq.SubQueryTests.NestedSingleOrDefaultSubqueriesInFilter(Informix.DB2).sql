-- Informix.DB2 Informix
DECLARE @p Char(1) -- StringFixedLength
SET     @p = 't'

SELECT
	thing.Id
FROM
	NestedFilterThing thing
		LEFT JOIN NestedFilterState s ON s.ThingId = thing.Id
WHERE
	CASE
		WHEN s.ThingId IS NOT NULL THEN CASE
			WHEN (
				SELECT
					t.ThingId
				FROM
					NestedFilterTransition t
						INNER JOIN NestedFilterState s_1 ON s_1.ThingId = thing.Id
				WHERE
					t.ThingId = s_1.ThingId AND t.CreatedDate = s_1.LastTransitionDate
			) IS NULL OR CASE
				WHEN (
					SELECT
						t_1.TransitionType
					FROM
						NestedFilterTransition t_1
							INNER JOIN NestedFilterState s_2 ON s_2.ThingId = thing.Id
					WHERE
						t_1.ThingId = s_2.ThingId AND t_1.CreatedDate = s_2.LastTransitionDate
				) = 'Delete'
					THEN 'f'::BOOLEAN
				ELSE 't'::BOOLEAN
			END
				THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
		ELSE @p::BOOLEAN
	END

