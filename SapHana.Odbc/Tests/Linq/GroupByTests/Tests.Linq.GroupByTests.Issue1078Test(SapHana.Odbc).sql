BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1078Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1078Table"
(
	"UserID" Integer NOT NULL,
	"SiteID" Integer NOT NULL,
	"Active" TinyInt NOT NULL,

	PRIMARY KEY ("UserID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 1
DECLARE @SiteID  -- Int32
SET     @SiteID = 1
DECLARE @Active  -- Byte
SET     @Active = 1

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 2
DECLARE @SiteID  -- Int32
SET     @SiteID = 1
DECLARE @Active  -- Byte
SET     @Active = 0

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 3
DECLARE @SiteID  -- Int32
SET     @SiteID = 1
DECLARE @Active  -- Byte
SET     @Active = 1

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 4
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Byte
SET     @Active = 0

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 5
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Byte
SET     @Active = 1

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 6
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Byte
SET     @Active = 0

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 7
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Byte
SET     @Active = 0

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 8
DECLARE @SiteID  -- Int32
SET     @SiteID = 3
DECLARE @Active  -- Byte
SET     @Active = 0

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserID  -- Int32
SET     @UserID = 9
DECLARE @SiteID  -- Int32
SET     @SiteID = 4
DECLARE @Active  -- Byte
SET     @Active = 1

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN "grp"."Active" = 0 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" "grp"
GROUP BY
	"grp"."SiteID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1078Table"

