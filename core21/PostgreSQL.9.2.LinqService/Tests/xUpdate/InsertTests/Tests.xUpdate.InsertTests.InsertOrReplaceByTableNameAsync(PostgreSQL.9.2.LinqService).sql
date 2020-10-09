BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPatient24"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

CREATE TABLE "xxPatient24"
(
	"PersonID"  Int  NOT NULL,
	"Diagnosis" text     NULL,

	CONSTRAINT "PK_xxPatient24" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient24"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient24"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient24"
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
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient24"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient24"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient24"
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
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

SELECT 
	Count(*)
FROM
	"xxPatient24" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient24"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient24"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient24"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient24"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

SELECT 
	Count(*)
FROM
	"xxPatient24" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPatient24"

