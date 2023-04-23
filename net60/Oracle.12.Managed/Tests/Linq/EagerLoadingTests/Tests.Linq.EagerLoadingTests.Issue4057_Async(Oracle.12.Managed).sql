BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					x."ParentID"
				FROM
					"Parent" x
				WHERE
					x."ParentID" = 3
				FETCH NEXT :take ROWS ONLY
			) t1
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
FETCH NEXT :take ROWS ONLY

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					x."ParentID"
				FROM
					"Parent" x
				WHERE
					x."ParentID" = 3
				FETCH NEXT :take ROWS ONLY
			) t1
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
FETCH NEXT :take ROWS ONLY

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					x."ParentID"
				FROM
					"Parent" x
				WHERE
					x."ParentID" = 3
				FETCH NEXT :take ROWS ONLY
			) t1
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
FETCH NEXT :take ROWS ONLY

BeforeExecute
DisposeTransactionAsync
