﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704'
		BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "xxPerson"';
END

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

SELECT 
	Count(*)
FROM
	"xxPerson" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."FirstName", 
	"t1"."PersonID", 
	"t1"."LastName", 
	"t1"."MiddleName", 
	"t1"."Gender"
FROM
	"xxPerson" "t1"
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'None'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	"xxPerson"
SET
	"xxPerson"."FirstName" = @FirstName,
	"xxPerson"."LastName" = @LastName,
	"xxPerson"."MiddleName" = @MiddleName,
	"xxPerson"."Gender" = @Gender
WHERE
	"xxPerson"."PersonID" = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."FirstName", 
	"t1"."PersonID", 
	"t1"."LastName", 
	"t1"."MiddleName", 
	"t1"."Gender"
FROM
	"xxPerson" "t1"
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "xxPerson"

