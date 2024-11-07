BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3631Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3631Table"
(
	"Country" NVarChar(2) NOT NULL,
	"State"   NVarChar(2) NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'AL'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'AZ'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'CA'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'FL'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'IN'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'OH'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'NY'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State NVarChar(2) -- String
SET     @State = 'AB'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State NVarChar(2) -- String
SET     @State = 'ON'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	("x"."Country", "x"."State") IN (
		SELECT
			"t1"."Item1",
			"t1"."Item2"
		FROM
			(
				SELECT 'US' AS "Item1", 'CA' AS "Item2" FROM DUMMY
				UNION ALL
				SELECT 'US', 'NY' FROM DUMMY) "t1"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3631Table"

