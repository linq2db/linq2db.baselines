﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	g_1."ParentID"
FROM
	"Child" g_1
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Parent" t
		WHERE
			t."ParentID" = :id AND t."ParentID" = g_1."ParentID"
	)
GROUP BY
	g_1."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 2

SELECT
	g_1."ParentID"
FROM
	"Child" g_1
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Parent" t
		WHERE
			t."ParentID" = :id AND t."ParentID" = g_1."ParentID"
	)
GROUP BY
	g_1."ParentID"

