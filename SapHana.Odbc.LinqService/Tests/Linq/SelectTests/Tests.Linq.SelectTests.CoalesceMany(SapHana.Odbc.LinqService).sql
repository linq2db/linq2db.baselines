BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CoalesceNullableFields"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CoalesceNullableFields"
(
	"Id"        Integer NOT NULL,
	"Nullable1" Integer     NULL,
	"Nullable2" Integer     NULL,
	"Nullable3" Integer     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Nullable1  -- Int32
SET     @Nullable1 = 10
DECLARE @Nullable2  -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3  -- Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Nullable1  -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2  -- Int32
SET     @Nullable2 = 20
DECLARE @Nullable3  -- Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Nullable1  -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2  -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3  -- Int32
SET     @Nullable3 = 30

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Nullable1  -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2  -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3  -- Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Coalesce("t"."Nullable1", "t"."Nullable2", "t"."Nullable3", "t"."Id"),
	Coalesce("t"."Nullable2", "t"."Nullable1", "t"."Nullable3", "t"."Id"),
	Coalesce("t"."Nullable2", "t"."Nullable3", "t"."Nullable1", "t"."Id"),
	Coalesce("t"."Nullable3", "t"."Nullable1", "t"."Nullable2", "t"."Id"),
	Coalesce("t"."Nullable3", "t"."Nullable2", "t"."Nullable1", "t"."Id")
FROM
	"CoalesceNullableFields" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Nullable1",
	"t1"."Nullable2",
	"t1"."Nullable3"
FROM
	"CoalesceNullableFields" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CoalesceNullableFields"

