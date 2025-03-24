﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW
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
--  DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"xxPerson" "t1"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"xxPerson" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

DELETE FROM
	"xxPerson" "t1"
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"xxPerson" "t1"

