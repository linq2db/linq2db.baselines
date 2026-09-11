-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = :p AND ROWNUM <= 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :p AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = :p AND ROWNUM <= 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :p AND ROWNUM <= 1

