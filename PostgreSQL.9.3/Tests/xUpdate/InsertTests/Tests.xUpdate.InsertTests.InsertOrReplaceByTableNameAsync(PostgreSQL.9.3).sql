-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient"."PersonID" = :PersonID

-- PostgreSQL.9.3 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient"."PersonID" = :PersonID

-- PostgreSQL.9.3 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"xxPatient" t1

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient"."PersonID" = :PersonID

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient"."PersonID" = :PersonID

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"xxPatient" t1

