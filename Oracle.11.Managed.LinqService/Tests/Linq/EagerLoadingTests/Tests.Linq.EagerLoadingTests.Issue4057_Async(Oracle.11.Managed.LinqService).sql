﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = 3 AND ROWNUM <= 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3 AND ROWNUM <= 1

BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = 3 AND ROWNUM <= 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3 AND ROWNUM <= 1

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = 3 AND ROWNUM <= 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3 AND ROWNUM <= 1

BeforeExecute
DisposeTransactionAsync
