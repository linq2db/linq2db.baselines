-- Oracle.11.Managed Oracle11
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
	"Parent" p
		CROSS JOIN "Child" c_1
WHERE
	c_1."ParentID" = p."ParentID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.11.Managed Oracle11
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.11.Managed Oracle11
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	NULL
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
SELECT
	'bad'
FROM SYS.DUAL

