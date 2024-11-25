BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.position
FROM
	entities x
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT toFloat32(-10) AS X) t
		WHERE
			x.position.x > t.X
	)
LIMIT 3

