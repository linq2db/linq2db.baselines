﻿BeforeExecute
-- Firebird.3 Firebird3

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
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
	CAST(@FirstName AS VARCHAR(25)),
	CAST(@LastName AS VARCHAR(8)),
	CAST(@MiddleName AS VARCHAR(15)),
	CAST(@Gender AS Char(1))
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

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
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = CAST(@FirstName AS VARCHAR(25)),
	"LastName" = CAST(@LastName AS VARCHAR(8)),
	"MiddleName" = CAST(@MiddleName AS VARCHAR(12)),
	"Gender" = CAST(@Gender AS Char(1))
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

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
FETCH NEXT 1 ROWS ONLY

