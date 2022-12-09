﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	key_data_result."c1",
	key_data_result."Value1",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			a_ParentTest."ParentID" as "c1",
			a_ParentTest."Value1"
		FROM
			"Parent" cp
				LEFT JOIN "Parent" a_ParentTest ON cp."ParentID" = a_ParentTest."ParentID" AND (cp."Value1" = a_ParentTest."Value1" OR cp."Value1" IS NULL AND a_ParentTest."Value1" IS NULL)
		WHERE
			(a_ParentTest."ParentID" IS NULL OR EXISTS(
				SELECT
					*
				FROM
					"Child" a
				WHERE
					a_ParentTest."ParentID" = a."ParentID" AND a."ChildID" = 11
			))
	) key_data_result
		INNER JOIN "Child" detail ON key_data_result."c1" = detail."ParentID"
ORDER BY
	detail."ChildID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	cp."ParentID",
	a_ParentTest."ParentID",
	a_ParentTest."Value1"
FROM
	"Parent" cp
		LEFT JOIN "Parent" a_ParentTest ON cp."ParentID" = a_ParentTest."ParentID" AND (cp."Value1" = a_ParentTest."Value1" OR cp."Value1" IS NULL AND a_ParentTest."Value1" IS NULL)
WHERE
	(a_ParentTest."ParentID" IS NULL OR EXISTS(
		SELECT
			*
		FROM
			"Child" a
		WHERE
			a_ParentTest."ParentID" = a."ParentID" AND a."ChildID" = 11
	))

