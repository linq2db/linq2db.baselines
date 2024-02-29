BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

