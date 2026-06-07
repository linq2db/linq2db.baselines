-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

UPSERT "xxPatient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

UPSERT "xxPatient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

UPSERT "xxPatient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

UPSERT "xxPatient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

