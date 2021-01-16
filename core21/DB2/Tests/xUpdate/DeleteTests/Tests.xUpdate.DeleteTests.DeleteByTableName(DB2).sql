BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "xxPerson"
(
	"FirstName"  NVarChar(255)                              NOT NULL,
	"PersonID"   Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"LastName"   NVarChar(255)                              NOT NULL,
	"MiddleName" NVarChar(255)                                  NULL,
	"Gender"     Char(1)                                    NOT NULL,

	CONSTRAINT "PK_xxPerson" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO "xxPerson"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

DELETE FROM
	"xxPerson" "t1"
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "xxPerson"

