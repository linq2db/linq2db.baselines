BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 3

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 4

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 6

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 7

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."ID"
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t"."ID"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

DROP TABLE "TempTable"

