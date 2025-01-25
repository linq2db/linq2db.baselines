BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPatient"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

CREATE TABLE "xxPatient"
(
	"PersonID"  Int  NOT NULL,
	"Diagnosis" text     NULL,

	CONSTRAINT "PK_xxPatient" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPatient"

