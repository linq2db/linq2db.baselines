-- SapHana.Native SapHana
CREATE COLUMN TABLE "aa"
(
	"bb" Integer       NOT NULL,
	"cc" NVarChar(255)     NULL,

	PRIMARY KEY ("bb")
)

-- SapHana.Native SapHana
DECLARE @bb Integer -- Int32
SET     @bb = 99
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO "aa"
(
	"bb",
	"cc"
)
VALUES
(
	:"bb",
	:"cc"
)

-- SapHana.Native SapHana
SELECT
	"t1"."bb",
	"t1"."cc"
FROM
	"aa" "t1"

-- SapHana.Native SapHana
DROP TABLE "aa"

