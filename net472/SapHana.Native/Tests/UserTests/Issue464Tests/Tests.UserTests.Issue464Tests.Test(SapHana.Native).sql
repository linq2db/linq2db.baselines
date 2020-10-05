BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue464"
(
	"Id"    Integer NOT NULL,
	"Value" Integer     NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 1

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
VALUES
(
	:"Id",
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 2

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
VALUES
(
	:"Id",
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value_1  -- Int32
SET     @Value_1 = 3

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
VALUES
(
	:"Id",
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue464" "t1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue464"

