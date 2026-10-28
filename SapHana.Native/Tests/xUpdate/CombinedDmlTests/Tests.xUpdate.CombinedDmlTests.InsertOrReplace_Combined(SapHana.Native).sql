-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

UPSERT "Patient"
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
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'

UPSERT "Patient"
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
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'

UPSERT "Patient"
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
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = :"id"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

UPSERT "Patient"
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
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'

UPSERT "Patient"
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
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'

UPSERT "Patient"
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
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = :"id"
LIMIT 2

