-- SapHana.Native SapHana
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1

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
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = :"id" AND "p"."Value1" = 1

-- SapHana.Native SapHana
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = :"Value1"
WHERE
	"p"."ParentID" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = :"id" AND "p"."Value1" = 2

-- SapHana.Native SapHana
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = :"Value1"
WHERE
	"p"."ParentID" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = :"id" AND "p"."Value1" = 3

