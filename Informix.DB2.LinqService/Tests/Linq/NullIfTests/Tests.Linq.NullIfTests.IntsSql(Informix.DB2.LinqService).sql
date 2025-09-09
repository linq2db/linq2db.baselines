BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	NULLIF(s."Int", 2)
FROM
	Src s
ORDER BY
	s."Int"

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x."Int" = 2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x."Int" <> 2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	NULLIF(s."Int", 4)
FROM
	Src s
ORDER BY
	s."Int"

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x."Int" = 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x."Int" <> 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	s."Int"
FROM
	Src s
ORDER BY
	s."Int"

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x

BeforeExecute
-- Informix.DB2 Informix

SELECT
	NULLIF(s.NullableInt, 2)
FROM
	Src s
ORDER BY
	s."Int"

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt = 2 OR x.NullableInt IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	NOT (x.NullableInt = 2 OR x.NullableInt IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	NULLIF(s.NullableInt, 4)
FROM
	Src s
ORDER BY
	s."Int"

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt = 4 OR x.NullableInt IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	NOT (x.NullableInt = 4 OR x.NullableInt IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	s.NullableInt
FROM
	Src s
ORDER BY
	s."Int"

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt IS NOT NULL

