﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" IN (1001, 1002)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	1001
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	1002
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
				INNER JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = 1 AND
			"c_1"."ChildID" IN (1001, 1002) AND
			"t1"."ParentID" = "c_1"."ParentID" AND
			"t1"."ChildID" = "c_1"."ChildID"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = 1

