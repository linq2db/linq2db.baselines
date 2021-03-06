﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DynamicTable"
(
	"ID"             Integer GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	"Not Identifier" Integer                                  NOT NULL,
	"Some Value"     Integer                                  NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"d"."Not Identifier"
FROM
	"DynamicTable" "d"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DynamicTable"

