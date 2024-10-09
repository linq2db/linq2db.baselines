BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4160Person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4160Person"
(
	"Code" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4160City"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4160City"
(
	"Code" NVarChar(255)     NULL,
	"Name" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT DISTINCT
	"cc_1"."Name"
FROM
	"Issue4160Person" "t1"
		LEFT JOIN LATERAL (
			SELECT
				"cc"."Name"
			FROM
				"Issue4160City" "cc"
			WHERE
				"cc"."Code" = "t1"."Code" OR "cc"."Code" IS NULL AND "t1"."Code" IS NULL
			LIMIT 1
		) "cc_1" ON 1=1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4160City"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4160Person"

