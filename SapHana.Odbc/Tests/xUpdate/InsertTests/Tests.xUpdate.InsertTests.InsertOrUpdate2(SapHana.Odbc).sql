﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

ALTER TABLE "Doctor" DROP CONSTRAINT "FK_Doctor_Person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

ALTER TABLE "Patient" DROP CONSTRAINT "FK_Patient_Person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

RENAME TABLE "Person" TO "Person_OLD"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


CREATE COLUMN TABLE "Person" (
	"PersonID" INTEGER CS_INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	"FirstName" NVARCHAR(50) NOT NULL ,
	"LastName" NVARCHAR(50) NOT NULL ,
	"MiddleName" NVARCHAR(50) NULL ,
	"Gender" CHAR(1) NOT NULL ,
	 PRIMARY KEY ("PersonID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Person" SELECT "PersonID", "FirstName", "LastName", "MiddleName", "Gender" FROM "Person_OLD"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Person_OLD"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

ALTER TABLE "Doctor" ADD CONSTRAINT "FK_Doctor_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID") ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

ALTER TABLE "Patient" ADD CONSTRAINT "FK_Patient_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID") ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	1
FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	'negative'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	1
FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = ?

