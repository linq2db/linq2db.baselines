BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "xxPatient44"

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "xxPatient44"
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
	"xxPatient44"
SET
	"xxPatient44"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient44"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO "xxPatient44"
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
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 2

UPDATE
	"xxPatient44"
SET
	"xxPatient44"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient44"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO "xxPatient44"
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
	"xxPatient44" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 1

UPDATE
	"xxPatient44"
SET
	"xxPatient44"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient44"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 2

UPDATE
	"xxPatient44"
SET
	"xxPatient44"."Diagnosis" = :"Diagnosis"
WHERE
	"xxPatient44"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"xxPatient44" "t1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "xxPatient44"

