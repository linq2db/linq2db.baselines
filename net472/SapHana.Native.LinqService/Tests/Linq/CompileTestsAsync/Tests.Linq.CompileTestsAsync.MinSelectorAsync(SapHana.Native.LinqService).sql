﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "AsyncDataTable"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 4

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 5

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 6

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 7

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 8

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 9

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	Min("c_1"."Id")
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" > :"Id"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "AsyncDataTable"

