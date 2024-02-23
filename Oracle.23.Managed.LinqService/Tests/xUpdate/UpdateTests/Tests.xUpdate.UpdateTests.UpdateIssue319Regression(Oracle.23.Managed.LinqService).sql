BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @Value1 Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 100500

SELECT
	t1."ParentID"
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @id Int32
SET     @id = 100500

UPDATE
	"Parent" t1
SET
	"Value1" = :ParentID
WHERE
	t1."ParentID" = :id AND (
		SELECT
			Count(*)
		FROM
			"Parent" t2
		WHERE
			t2."ParentID" = :id
	) > 0

