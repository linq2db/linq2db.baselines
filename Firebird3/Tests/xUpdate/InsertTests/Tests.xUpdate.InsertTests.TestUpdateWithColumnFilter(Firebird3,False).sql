﻿BeforeExecute
-- Firebird3 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS VARCHAR(18)),
	CAST(@LastName AS VARCHAR(8)),
	CAST(@MiddleName AS VARCHAR(15)),
	CAST(@Gender AS Char(1))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT FIRST 1
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = CAST(@FirstName AS VARCHAR(18)),
	"LastName" = CAST(@LastName AS VARCHAR(8)),
	"Gender" = CAST(@Gender AS Char(1))
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT FIRST 1
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName

BeforeExecute
-- Firebird3 Firebird
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @newName

