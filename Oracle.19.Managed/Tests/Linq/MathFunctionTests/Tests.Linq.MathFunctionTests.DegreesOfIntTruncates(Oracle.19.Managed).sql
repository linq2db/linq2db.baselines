-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(d.M) AS Int) AS Float) * 57.295779513082323D
FROM
	"DegreesValue" d
WHERE
	CAST(CAST(Floor(CAST(CAST(Floor(d.M) AS Int) AS Float) * 57.295779513082323D) AS Int) AS Float) < 57.100000000000001D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.M
FROM
	"DegreesValue" t1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(d.M) AS Int) AS Float) * 57.295779513082323D
FROM
	"DegreesValue" d
WHERE
	CAST(CAST(Floor(CAST(CAST(Floor(d.M) AS Int) AS Float) * 57.295779513082323D) AS Int) AS Float) < 114.5D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.M
FROM
	"DegreesValue" t1

