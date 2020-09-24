BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "xxPatient22"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "xxPatient22"
(
	"PersonID"  Int  NOT NULL,
	"Diagnosis" text     NULL,

	CONSTRAINT "PK_xxPatient22" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient22"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient22"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient22"
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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient22"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient22"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient22"
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
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"xxPatient22" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

UPDATE
	"xxPatient22"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient22"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2

UPDATE
	"xxPatient22"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"xxPatient22"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"xxPatient22" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "xxPatient22"

