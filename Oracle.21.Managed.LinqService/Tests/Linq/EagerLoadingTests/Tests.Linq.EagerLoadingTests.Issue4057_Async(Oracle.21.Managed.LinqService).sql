﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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
			x."ParentID" = 3
		FETCH NEXT 1 ROWS ONLY
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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
			x."ParentID" = 3
		FETCH NEXT 1 ROWS ONLY
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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
			x."ParentID" = 3
		FETCH NEXT 1 ROWS ONLY
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransactionAsync
