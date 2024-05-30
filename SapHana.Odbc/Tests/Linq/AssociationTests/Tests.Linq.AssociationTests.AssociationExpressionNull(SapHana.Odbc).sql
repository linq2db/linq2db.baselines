BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NotNullParent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NotNullParent"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "NotNullParent"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO "NotNullParent"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NotNullChild"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NotNullChild"
(
	"ParentID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

INSERT INTO "NotNullChild"
(
	"ParentID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a_ChildOuter"."ParentID"
FROM
	"NotNullParent" "p"
		LEFT JOIN "NotNullChild" "a_ChildOuter" ON "p"."ID" = "a_ChildOuter"."ParentID"
ORDER BY
	"p"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NotNullChild"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NotNullParent"

