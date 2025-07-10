BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	:id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ChildID Int32
SET     @ChildID = 5000
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
				LEFT JOIN "Parent" a_Parent ON c_1."ParentID" = a_Parent."ParentID"
		WHERE
			c_1."ChildID" = :id AND
			a_Parent."Value1" = 1 AND
			"Child"."ParentID" = c_1."ParentID" AND
			"Child"."ChildID" = c_1."ChildID"
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 5000

