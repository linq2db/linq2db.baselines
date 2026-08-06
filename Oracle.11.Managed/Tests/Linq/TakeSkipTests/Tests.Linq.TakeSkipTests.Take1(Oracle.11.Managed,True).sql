-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ROWNUM <= :take

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ROWNUM <= :take

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ROWNUM <= :take

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ROWNUM <= :take

