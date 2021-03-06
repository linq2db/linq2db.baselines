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
-- SapHana.Native SapHana (asynchronously)

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
-- SapHana.Native SapHana (asynchronously)

SELECT MAX("PersonID") FROM "Person"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @id_1  -- Int32
SET     @id_1 = 5

UPDATE
	"Patient"
SET
	"Patient"."Diagnosis" = Cast((Length("Patient"."Diagnosis")) as NVarChar(11))
WHERE
	"Patient"."PersonID" = :"id_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:"id",
	'abc'
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @i  -- Int32
SET     @i = 1
DECLARE @id_1_1  -- Int32
SET     @id_1_1 = 5

UPDATE
	"Patient"
SET
	"Patient"."Diagnosis" = Cast((Length("Patient"."Diagnosis") + :"i") as NVarChar(11))
WHERE
	"Patient"."PersonID" = :"id_1_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @i  -- Int32
SET     @i = 2
DECLARE @id_1_1_1  -- Int32
SET     @id_1_1_1 = 5

UPDATE
	"Patient"
SET
	"Patient"."Diagnosis" = Cast((Length("Patient"."Diagnosis") + :"i") as NVarChar(11))
WHERE
	"Patient"."PersonID" = :"id_1_1_1"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
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
-- SapHana.Native SapHana (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = :"id"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = :"id"

