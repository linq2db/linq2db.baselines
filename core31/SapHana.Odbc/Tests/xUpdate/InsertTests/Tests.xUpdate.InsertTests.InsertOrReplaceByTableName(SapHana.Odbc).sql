BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "xxPatient21"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "xxPatient21"
(
	"PersonID"  Integer       NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient21"
SET
	"xxPatient21"."Diagnosis" = ?
WHERE
	"xxPatient21"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient21"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient21"
SET
	"xxPatient21"."Diagnosis" = ?
WHERE
	"xxPatient21"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient21"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"xxPatient21" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient21"
SET
	"xxPatient21"."Diagnosis" = ?
WHERE
	"xxPatient21"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient21"
SET
	"xxPatient21"."Diagnosis" = ?
WHERE
	"xxPatient21"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"xxPatient21" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "xxPatient21"

