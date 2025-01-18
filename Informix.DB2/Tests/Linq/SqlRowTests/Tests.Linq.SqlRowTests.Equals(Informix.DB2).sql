BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	ROW (i.One, i.Two, i.Three) = ROW (i.One, i.One * 2, i.Four - 1)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	ROW (i.One, i.Two, i.Four) = ROW (i.One, i.Two, i.Three)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	ROW (i.One, i.Nil, i.Three) = ROW (i.One, i.Two, i.Three)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	ROW (1, i.Nil, 3) = ROW (i.One, i.Nil, i.Three)

