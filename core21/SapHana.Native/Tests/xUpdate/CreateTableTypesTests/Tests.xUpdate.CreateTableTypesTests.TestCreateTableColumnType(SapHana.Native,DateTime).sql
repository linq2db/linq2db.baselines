﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "CreateTableTypes"
(
	"Id"       Integer   NOT NULL,
	"DateTime" Timestamp NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DateTime  -- DateTime2
SET     @DateTime = '2000-01-01'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	:"Id",
	:"DateTime"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DateTime  -- DateTime2
SET     @DateTime = '2018-11-24 01:02:03'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	:"Id",
	:"DateTime"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."Id",
	"t1"."DateTime"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "CreateTableTypes"

