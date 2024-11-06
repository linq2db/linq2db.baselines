BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.position
FROM
	entities x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT toFloat32(-10) AS X) t
		WHERE
			x.position.x > t.X
	)
LIMIT 3

