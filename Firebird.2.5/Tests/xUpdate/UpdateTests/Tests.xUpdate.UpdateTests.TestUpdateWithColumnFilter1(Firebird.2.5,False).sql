﻿BeforeExecute
-- Firebird.2.5 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird.2.5 Firebird
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT FIRST @take
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
-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Person"."FirstName" = @FirstName,
	"Person"."LastName" = @LastName,
	"Person"."Gender" = @Gender
WHERE
	"Person"."PersonID" = @ID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT FIRST @take
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName

