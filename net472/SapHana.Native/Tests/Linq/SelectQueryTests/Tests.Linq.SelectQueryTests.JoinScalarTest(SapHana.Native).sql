﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 100

INSERT INTO "SampleClass"
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
	"t"."Id",
	"t"."Value",
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "c1"
FROM DUMMY
		) "s" ON "s"."c1" = "t"."Id"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "SampleClass"

