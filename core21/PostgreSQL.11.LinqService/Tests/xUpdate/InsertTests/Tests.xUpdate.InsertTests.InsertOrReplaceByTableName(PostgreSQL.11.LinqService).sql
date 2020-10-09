BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "xxPatient22"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "xxPatient22"
(
	"PersonID"  Int  NOT NULL,
	"Diagnosis" text     NULL,

	CONSTRAINT "PK_xxPatient22" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient22" AS t1
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient22" AS t1
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"xxPatient22" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient22" AS t1
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient22" AS t1
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"xxPatient22" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "xxPatient22"

