-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_square t1


INSERT INTO l2dbnh_square (name, side, shapeid) VALUES (@p0, @p1, @p2);@p0 = 'S1' [Type: String (2:0:0)], @p1 = 4 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

-- Firebird.5 Firebird4
SELECT
	t1.shapeid,
	t1.name,
	t1.side
FROM
	l2dbnh_square t1
ORDER BY
	t1.shapeid


