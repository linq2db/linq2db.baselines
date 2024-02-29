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
	NULL
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = 1001

