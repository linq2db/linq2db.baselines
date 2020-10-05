BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	Add_Days(CURRENT_TIMESTAMP, 1),
	Add_Days(CURRENT_TIMESTAMP, 2)
FROM DUMMY
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "SampleClass"

