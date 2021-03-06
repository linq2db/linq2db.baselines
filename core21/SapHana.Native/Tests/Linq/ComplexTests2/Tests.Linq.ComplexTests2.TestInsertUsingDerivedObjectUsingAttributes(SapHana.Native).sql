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
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
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
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("PersonID") FROM "Person"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."FirstName" = 'test_inherited_insert'
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Person"."FirstName" = :"FirstName",
	"Person"."LastName" = :"LastName",
	"Person"."MiddleName" = :"MiddleName",
	"Person"."Gender" = :"Gender"
WHERE
	"Person"."PersonID" = :"ID"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."FirstName" = 'test_inherited_insert'
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = :"ID"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" = 'test_inherited_insert'

