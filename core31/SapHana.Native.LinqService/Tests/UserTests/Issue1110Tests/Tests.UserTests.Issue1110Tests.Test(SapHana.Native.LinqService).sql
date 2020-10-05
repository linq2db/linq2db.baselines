BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1110TB"
(
	"Id"        Integer   NOT NULL,
	"TimeStamp" Timestamp NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1  -- DateTime2
SET     @TimeStamp_1 = '2020-02-29 17:54:55.123'

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	:"Id",
	:"TimeStamp_1"
)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1110TB"

