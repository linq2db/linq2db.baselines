-- SapHana.Native SapHana
DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000

-- SapHana.Native SapHana
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1000
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	:"Value1"
)

-- SapHana.Native SapHana
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	:"Value1"
)

-- SapHana.Native SapHana
DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1000 AND "p"."Value1" IS NULL OR "p"."ParentID" = 1001 AND "p"."Value1" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000

