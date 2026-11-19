-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	c_1."ChildID",
	CASE
		WHEN error."c1" = 1 OR error."c2" = 1 THEN 5
		ELSE 3
	END,
	CASE
		WHEN error."c1" = 1 OR error."c2" = 1 THEN 'bad'
		ELSE NULL
	END
FROM
	"Parent" p
		CROSS JOIN "Child" c_1
		OUTER APPLY (
			SELECT
				CASE
					WHEN c_1."ChildID" <> p."ParentID" * 10 + 1 THEN 1
					ELSE 0
				END as "c1",
				CASE
					WHEN DECODE(p."Value1", c_1."ParentID", 0, 1) = 1 THEN 1
					ELSE 0
				END as "c2"
			FROM SYS.DUAL
		) error
WHERE
	c_1."ParentID" = p."ParentID"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	c_1."ChildID",
	CASE
		WHEN c_1."ChildID" <> p."ParentID" * 10 + 1 OR DECODE(p."Value1", c_1."ParentID", 0, 1) = 1
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN c_1."ChildID" <> p."ParentID" * 10 + 1 OR DECODE(p."Value1", c_1."ParentID", 0, 1) = 1
			THEN 'bad'
		ELSE NULL
	END
FROM
	"Parent" p,
	"Child" c_1
WHERE
	c_1."ParentID" = p."ParentID"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	'bad'
FROM SYS.DUAL

