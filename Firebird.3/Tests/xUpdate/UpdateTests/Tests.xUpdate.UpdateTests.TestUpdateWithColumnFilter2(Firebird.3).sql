﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = CAST(@FirstName AS VARCHAR(25))
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."PersonID" = @ID
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = CAST(@FirstName AS VARCHAR(25)),
	"LastName" = CAST(@LastName AS VARCHAR(25)),
	"MiddleName" = CAST(@MiddleName AS VARCHAR(1)),
	"Gender" = CAST(@Gender AS Char(1))
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @ID
FETCH NEXT 2 ROWS ONLY

