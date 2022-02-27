BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "CreateTableTypes"
(
	"Id"            Integer NOT NULL,
	"Int64Nullable" BigInt      NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int64Nullable  -- Int64
SET     @Int64Nullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64Nullable"
)
VALUES
(
	:"Id",
	:"Int64Nullable"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Int64Nullable  -- Int64
SET     @Int64Nullable = 4

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64Nullable"
)
VALUES
(
	:"Id",
	:"Int64Nullable"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."Id",
	"t1"."Int64Nullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "CreateTableTypes"

