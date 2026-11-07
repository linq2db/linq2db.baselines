-- SapHana.Native SapHana
DECLARE @PersonID Integer -- Int32
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
	:"PersonID",
	:"Diagnosis"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
DECLARE @PersonID Integer -- Int32
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
	:"PersonID",
	:"Diagnosis"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

-- SapHana.Native SapHana
DECLARE @PersonID Integer -- Int32
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
	:"PersonID",
	:"Diagnosis"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
DECLARE @PersonID Integer -- Int32
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
	:"PersonID",
	:"Diagnosis"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

