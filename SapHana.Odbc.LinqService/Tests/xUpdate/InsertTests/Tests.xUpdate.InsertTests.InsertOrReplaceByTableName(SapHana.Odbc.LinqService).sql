BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "xxPatient"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "xxPatient"
(
	"PersonID"  Integer       NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient"
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
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient"
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
	COUNT(*)
FROM
	"xxPatient" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "xxPatient"

