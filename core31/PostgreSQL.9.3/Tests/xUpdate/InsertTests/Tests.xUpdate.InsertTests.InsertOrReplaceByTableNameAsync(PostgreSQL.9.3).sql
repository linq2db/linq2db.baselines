BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPatient12"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)

CREATE TABLE "xxPatient12"
(
	"PersonID"  Int  NOT NULL,
	"Diagnosis" text     NULL,

	CONSTRAINT "PK_xxPatient12" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient12"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient12"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient12"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient12"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient12"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient12"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient12" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient12"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient12"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient12"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient12"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient12" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPatient12"

