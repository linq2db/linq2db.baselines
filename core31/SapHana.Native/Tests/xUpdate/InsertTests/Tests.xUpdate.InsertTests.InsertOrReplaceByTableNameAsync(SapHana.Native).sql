BeforeExecute
-- SapHana.Native SapHana (asynchronously)

DROP TABLE "xxPatient46"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

CREATE COLUMN TABLE "xxPatient46"
(
	"PersonID"  Integer       NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 1

UPDATE
	"xxPatient46"
SET
	"xxPatient46"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient46"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient46"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:"PersonID",
	:"Diagnosis"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID_1_1  -- Int32
SET     @PersonID_1_1 = 2

UPDATE
	"xxPatient46"
SET
	"xxPatient46"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient46"."PersonID" = :"PersonID_1_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient46"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:"PersonID",
	:"Diagnosis"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient46" "t1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID_1_1_1  -- Int32
SET     @PersonID_1_1_1 = 1

UPDATE
	"xxPatient46"
SET
	"xxPatient46"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient46"."PersonID" = :"PersonID_1_1_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID_1_1_1_1  -- Int32
SET     @PersonID_1_1_1_1 = 2

UPDATE
	"xxPatient46"
SET
	"xxPatient46"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient46"."PersonID" = :"PersonID_1_1_1_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient46" "t1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

DROP TABLE "xxPatient46"

