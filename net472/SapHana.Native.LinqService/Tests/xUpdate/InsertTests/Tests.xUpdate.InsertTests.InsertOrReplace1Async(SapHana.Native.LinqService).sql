﻿BeforeExecute
-- SapHana.Native SapHana

ALTER TABLE "Doctor" DROP CONSTRAINT "FK_Doctor_Person"

BeforeExecute
-- SapHana.Native SapHana

ALTER TABLE "Patient" DROP CONSTRAINT "FK_Patient_Person"

BeforeExecute
-- SapHana.Native SapHana

RENAME TABLE "Person" TO "Person_OLD"

BeforeExecute
-- SapHana.Native SapHana


CREATE COLUMN TABLE "Person" (
	"PersonID" INTEGER CS_INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	"FirstName" NVARCHAR(50) NOT NULL ,
	"LastName" NVARCHAR(50) NOT NULL ,
	"MiddleName" NVARCHAR(50) NULL ,
	"Gender" CHAR(1) NOT NULL ,
	 PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "Person" SELECT "PersonID", "FirstName", "LastName", "MiddleName", "Gender" FROM "Person_OLD"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Person_OLD"

BeforeExecute
-- SapHana.Native SapHana

ALTER TABLE "Doctor" ADD CONSTRAINT "FK_Doctor_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID") ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- SapHana.Native SapHana

ALTER TABLE "Patient" ADD CONSTRAINT "FK_Patient_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID") ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("PersonID") FROM "Person"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 5

UPDATE
	"Patient"
SET
	"Patient"."Diagnosis" = :"Diagnosis"
WHERE
	"Patient"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PersonID  -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO "Patient"
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
SET     @Diagnosis = 'abc1'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 5

UPDATE
	"Patient"
SET
	"Patient"."Diagnosis" = :"Diagnosis"
WHERE
	"Patient"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID_1  -- Int32
SET     @PersonID_1 = 5

UPDATE
	"Patient"
SET
	"Patient"."Diagnosis" = :"Diagnosis"
WHERE
	"Patient"."PersonID" = :"PersonID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = :"id"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = :"id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = :"id"

