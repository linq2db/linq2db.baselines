BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1107TB"
(
	"Id"       Integer   NOT NULL,
	"TestDate" Timestamp NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @TestDate  -- DateTime2
SET     @TestDate = '2018-01-01'

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
VALUES
(
	:"Id",
	:"TestDate"
)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1107TB"

