-- SapHana.Odbc SapHanaOdbc

DROP TABLE "xxPatient"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "xxPatient"
(
	"PersonID"  Integer       NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	PRIMARY KEY ("PersonID")
)

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "xxPatient"

