﻿BeforeExecute
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
-- SapHana.Native SapHana

DROP TABLE "TempTable"

