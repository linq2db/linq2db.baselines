﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "DynamicTable"
(
	"ID"             Integer GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	"Not Identifier" Integer                                  NOT NULL,
	"Some Value"     Integer                                  NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	:"NotIdentifier",
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"d"."Not Identifier"
FROM
	"DynamicTable" "d"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "DynamicTable"

