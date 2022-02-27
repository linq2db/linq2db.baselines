BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "xxPatient23"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "xxPatient23"
(
	"PersonID"  Integer       NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient23"
SET
	"xxPatient23"."Diagnosis" = ?
WHERE
	"xxPatient23"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient23"
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
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient23"
SET
	"xxPatient23"."Diagnosis" = ?
WHERE
	"xxPatient23"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient23"
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
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient23" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient23"
SET
	"xxPatient23"."Diagnosis" = ?
WHERE
	"xxPatient23"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient23"
SET
	"xxPatient23"."Diagnosis" = ?
WHERE
	"xxPatient23"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient23" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "xxPatient23"

