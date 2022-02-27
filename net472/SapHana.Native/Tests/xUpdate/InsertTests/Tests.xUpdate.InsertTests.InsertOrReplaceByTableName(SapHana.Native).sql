BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "xxPatient42"

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "xxPatient42"
(
	"PersonID"  Integer       NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 1

UPDATE
	"xxPatient42"
SET
	"xxPatient42"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient42"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient42"
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
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID_1_1  -- Int32
SET     @PersonID_1_1 = 2

UPDATE
	"xxPatient42"
SET
	"xxPatient42"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient42"."PersonID" = :"PersonID_1_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient42"
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
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"xxPatient42" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID_1_1_1  -- Int32
SET     @PersonID_1_1_1 = 1

UPDATE
	"xxPatient42"
SET
	"xxPatient42"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient42"."PersonID" = :"PersonID_1_1_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID_1_1_1_1  -- Int32
SET     @PersonID_1_1_1_1 = 2

UPDATE
	"xxPatient42"
SET
	"xxPatient42"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient42"."PersonID" = :"PersonID_1_1_1_1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"xxPatient42" "t1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "xxPatient42"

